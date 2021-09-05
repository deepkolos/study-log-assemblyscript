import GLTFFile from './models/glTF/Cube.json';

/**
 * 感觉和THREE差不多
 *
 * 坐标系 Frame（Point点，Vector向量，Frame坐标）子节点位于什么坐标系下，貌似也能理解
 * 相机 Camera
 * 材质 Matrial
 * 几何 Geometry
 * 光照 Light
 * 网格 Mesh
 * 场景图 GLTF
 *    （不过这里直接使用gltf的数据结构作为场景图, 不过貌似不太行的样子，只要有中间层抽象，就必然会有数据结构的转换
 *    （感觉如果定位是gltf renderer的话，gltf就是通用的数据结构了，如果是这一层的话，只需要抽象WebGL API即可
 *    （如果没有类似THREE这一层抽象，其实只是意味着gltf的数据直接解析为gl的数据 glTF > GLTFLoader > Scene > Renderer 变成 glTF > Renderer
 *    （反正WebGL层是需要抽象的，先想想这部分内容；光照，相机，还是得抽象
 */

class Matrix {}
class Vector {}
class Euler {}
class Quaternion {}
class Frame {}

class Camera extends Frame {}
class PerspectiveCamera extends Camera {}

class Light extends Frame {}
class DirectinalLight extends Light {}
class AmbientLight extends Light {}

// class Geometry {}
// class Material {}
// class UnlitMaterial extends Material {}
// class Mesh extends Frame {}

// // 因为WebGPU快到正式版浏览器了，所以也尝试设计下简单的多个renderer支持（感觉和three的抽象是一样的
// class WebGL1Renderer {}
// class WebGPURenderer {}

type GLTF = typeof GLTFFile;

class GLTFWebGLRenderer {
  // 纯粹渲染
  constructor(gl: WebGLRenderingContext) {}

  render(gltf: GLTF, camera: Camera) {}
}

// WebGL的资源如何管理？单独还是集成在render呢，既然是webglRenderer那么就是gltf和webgl的关联绑定，直接挂上面也没有啥问题
// 要么就直接从shader的概念开始抽象，如果加上类似three的中间层就非常多概念了
// GLTF/FBX/GBJ -> THREE Scene Graph -> Edit Scene Graph -> render SceneGraph
// FBX/OBJ -> GLTF -> render GLTF 只是相对比较难编辑这个GLTF内的东西，不过可以外挂
// 只是相当于解析GLTF的逻辑和渲染并在一起了，GLTF目前索引表的数据格式好处应该是方便资源复用？
// 如果是这样需要抽象的也只有webgl program需要方便设置了
// 想拥有类似tfjs-webgl-backend的webgl debug信息打日志，但是又不希望在prod build存在

/**
 * geometry -> vec3 attribute
 * material -> texture uniform
 * light -> vec4 mat4 uniform
 * camera -> mat4 uniform
 */

// attribute是可以跨program的，所以attribute上传和使用逻辑

// 通过这两个实现方便的设置+TS的类型提示
// getActiveAttrib
// getActiveUniform

type AttributeInfo<T> = {
  [k in keyof T]: {
    name: string;
    size: number;
    type: number;
    location: number;
    index: number;
  };
};

type UnifromInfo<T> = {
  [k in keyof T]: {
    name: string;
    size: number;
    type: number;
    location: WebGLUniformLocation;
    index: number;
  };
};

namespace gl {
  export type vec2 = [number, number];
  export type vec3 = [number, number, number];
  export type vec4 = [number, number, number, number];

  // prettier-ignore
  export type mat2 = [
    number, number,
    number, number,
  ];
  // prettier-ignore
  export type mat3 = [
    number, number, number,
    number, number, number,
    number, number, number,
  ];
  // prettier-ignore
  export type mat4 = [
    number, number, number, number,
    number, number, number, number,
    number, number, number, number,
    number, number, number, number,
  ];

  export type sampler2D = number;
}

interface ProgramTypeMap<T, K> {
  Attributes: T;
  Uniforms: K;
}

interface AttributeSetting {
  size: GLint;
  type: GLenum;
  normalized: GLboolean;
  stride: GLsizei;
  offset: GLintptr;
  buffer: WebGLBuffer;
  // bufferData: T;
  // bufferUsage:
  //   | WebGLRenderingContext['STATIC_DRAW']
  //   | WebGLRenderingContext['DYNAMIC_DRAW']
  //   | WebGLRenderingContext['STREAM_DRAW'];
}

// 还是直接复制把
// type ParametersFrom1<T extends (...args: any) => any> = T extends (any: any, ...args: infer P) => any ? P : never;
// type A = ParametersFrom1<WebGLRenderingContext['vertexAttribPointer']>;

type CommonProgramTypeMap = ProgramTypeMap<
  {
    // geometry
    aPosition: AttributeSetting;
    aTexcoord: AttributeSetting;
  },
  {
    // camera
    uProjection: gl.mat4;
    uCameraPoseInvert: gl.mat4;
    uModelPose: gl.mat4;
    // light
    uAmbientLight: gl.vec4;
    uDirectionalLight: gl.vec4;
    uPointLight: gl.vec4;
    uPointLightPosition: gl.vec4;
    uDirectionalLightPose: gl.mat4;
  }
>;

interface UnlitMatrialTypeMap extends CommonProgramTypeMap {
  Uniforms: {
    uBaseColorTexture: gl.sampler2D; // texture unit
    uBaseColor: gl.vec3;
  } & CommonProgramTypeMap['Uniforms'];
}
// 要么后面再拆分吧，类型貌似有点多，额这类型提示不生效。。。有点尴尬

type ElementOf<T> = T extends Array<infer E> ? E : never;
type A<T> = T extends ProgramTypeMap<infer K, infer U> ? [K, U] : unknown;

class GLProgram<T extends ProgramTypeMap<unknown, unknown>> {
  gl: WebGLRenderingContext;
  glProgram: WebGLProgram;
  vertexShaderSource: string;
  framgmentShaderSource: string;
  attributeInfo: AttributeInfo<T['Attributes']>;
  uniformInfo: UnifromInfo<T['Uniforms']>;
  attributeSetting: {
    [k in keyof T['Attributes']]: AttributeSetting;
  };

  constructor(
    gl: WebGLRenderingContext,
    vertexShaderSource: string,
    framgmentShaderSource: string,
  ) {
    this.gl = gl;
    this.vertexShaderSource = vertexShaderSource;
    this.framgmentShaderSource = framgmentShaderSource;
  }

  compile() {
    const { gl } = this;
    const program = createGLProgram(
      gl,
      this.vertexShaderSource,
      this.framgmentShaderSource,
    );
    const uniformInfo = getUniformInfo<T['Uniforms']>(gl, program);
    const attributeInfo = getAttributeInfo<T['Attributes']>(gl, program);

    this.glProgram = program;
    this.attributeInfo = attributeInfo;
    this.uniformInfo = uniformInfo;

    return this;
  }

  // 如何外部生成这些setAttribute的方法细分类型呢，得看看dom里面是如何实现的
  // 记得是用map来实现
  setAttribute<K extends keyof T['Attributes']>(
    name: K,
    data: T['Attributes'][K],
  ) {
    const { gl } = this;
    // this.attributeInfo[name].location
    // 这样的设计，会导致attribute的复用貌似就成问题了
    // accessIndex可以理解为是一个cacheKey但是外层只能拿到float32Array,那不带buffer的情况了
    // 貌似这个不太对，从shader提取到的信息并不多，重新整理看看那些是需要的类型信息，一版是一对一，但是也可能不一定
    // shader能提供的信息只有location，其他还是需要手动设置
    // setAttribute是否需要涉及buffer的维护呢？可能还是需要的
    // 如果是的话，就需要一个buffer的复用问题

    // gl.bindBuffer(gl.ARRAY_BUFFER, texcoord_0Buffer);
    // gl.enableVertexAttribArray(aTexcoord);
    // gl.vertexAttribPointer(aTexcoord, 2, gl.FLOAT, false, 0, 0);

    // attribute也确实是尴尬这里的定位估计就变得很薄了，也就仅仅记录下attribute 一些其他参数了

    return this;
  }

  setUnifrom<K extends keyof T['Uniforms']>(name: K, data: T['Uniforms'][K]) {
    // 有gl派生资源的应该如何管理？主要是texture和buffer这两种资源，buffer这里包创建了，目前attribute和buffer是多对多的关系，但是texture和纹理并不是
    return this;
  }

  run() {
    // 状态重置可以外部控制，这个program仅仅处理shader相关的
    // 初始化Attribute
    // uniform 则是按需更新，不是每次都得全量更新
    // draw call
  }

  dispose() {}
}

const gl = null as WebGLRenderingContext;
const a: GLProgram<UnlitMatrialTypeMap> = new GLProgram(gl, '', '');

a.setUnifrom('uAmbientLight', [1, 1, 1, 1]);

// oasis里用了引用计数，three则使用weakMap，进一步简化资源的维护，这里就先沿用GLTF内资源复用，要不后面再考虑，需要遍历资源情况，不过也只有GLTF内是显式标记了复用情况
// 如果是这样的话，纹理也在program里集成创建了
// 算了还是外部维护吧，传递之前都是知道的
class GLTFGLCache {
  buffer: Map<number, WebGLBuffer>; // gltf accessor -> gl buffer
  texture: Map<number, WebGLTexture>; // gltf texture -> gl texture
}

function getUniformInfo<T>(gl: WebGLRenderingContext, program: WebGLProgram) {
  const uniformLen = gl.getProgramParameter(
    program,
    gl.ACTIVE_UNIFORMS,
  ) as number;
  const uniformInfo = {} as UnifromInfo<T>;
  for (let i = 0; i < uniformLen; ++i) {
    const info = gl.getActiveUniform(program, i);
    uniformInfo[info.name] = {
      ...info,
      location: gl.getUniformLocation(program, info.name),
      index: i,
    };
  }
  return uniformInfo;
}

function getAttributeInfo<T>(gl: WebGLRenderingContext, program: WebGLProgram) {
  const attributeLen = gl.getProgramParameter(
    program,
    gl.ACTIVE_ATTRIBUTES,
  ) as number;
  const attributeInfo = {} as AttributeInfo<T>;

  for (let i = 0; i < attributeLen; i++) {
    const info = gl.getActiveAttrib(program, i);
    attributeInfo[info.name] = {
      ...info,
      location: gl.getAttribLocation(program, info.name),
      index: i,
    };
  }
  return attributeInfo;
}

function createGLShader(
  gl: WebGLRenderingContext,
  shaderType:
    | WebGLRenderingContext['VERTEX_SHADER']
    | WebGLRenderingContext['FRAGMENT_SHADER'],
  shaderSource: string,
) {
  const shader = gl.createShader(shaderType);
  gl.shaderSource(shader, shaderSource);
  gl.compileShader(shader);
  const success = gl.getShaderParameter(shader, gl.COMPILE_STATUS);
  if (!success)
    console.error('compile shader fail', gl.getShaderInfoLog(shader));
  return shader;
}

function createGLProgram(
  gl: WebGLRenderingContext,
  vsSource: string,
  fsSource: string,
) {
  const vs = createGLShader(gl, gl.VERTEX_SHADER, vsSource);
  const fs = createGLShader(gl, gl.FRAGMENT_SHADER, fsSource);
  const program = gl.createProgram();
  gl.attachShader(program, vs);
  gl.attachShader(program, fs);
  gl.linkProgram(program);
  const success = gl.getProgramParameter(program, gl.LINK_STATUS);
  if (!success)
    console.error('link program fail', gl.getProgramInfoLog(program));
  return program;
}
