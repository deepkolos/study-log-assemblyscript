import { addLineNumber } from './utils';

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

export interface AttributeSetting {
  size: GLint;
  type: GLenum;
  normalized: GLboolean;
  stride: GLsizei;
  offset: GLintptr;
  buffer: WebGLBuffer;
}

export interface ProgramTypeMap<
  U,
  A extends { [k: string]: AttributeSetting },
> {
  Attributes: A;
  Uniforms: U;
}

export type CommonProgramTypeMap<U = {}, A = {}> = ProgramTypeMap<
  U & {
    // camera
    uProjection: gl.mat4;
    uCameraPoseInvert: gl.mat4;
    uModelPose: gl.mat4;
  },
  A & {
    // geometry
    aPosition: AttributeSetting;
    aTexcoord: AttributeSetting;
  }
>;

export class GLProgram<
  T extends ProgramTypeMap<unknown, { [k: string]: AttributeSetting }>,
> {
  private gl: WebGLRenderingContext;
  private glProgram: WebGLProgram;
  private vertexShaderSource: string;
  private framgmentShaderSource: string;
  private attributeInfo: AttributeInfo<T['Attributes']>;
  private uniformInfo: UnifromInfo<T['Uniforms']>;
  private attributeSetting = {} as {
    [k in keyof T['Attributes']]: AttributeSetting;
  };

  constructor(vertexShaderSource: string, framgmentShaderSource: string) {
    this.vertexShaderSource = vertexShaderSource;
    this.framgmentShaderSource = framgmentShaderSource;
  }

  compile(gl: WebGLRenderingContext) {
    this.gl = gl;
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

  use() {
    // 这个可能自动化么
    this.gl.useProgram(this.glProgram);
    return this;
  }

  setAttribute<K extends keyof T['Attributes']>(
    name: K,
    data: T['Attributes'][K],
  ) {
    this.attributeSetting[name] = data;
    return this;
  }

  setUnifrom<K extends keyof T['Uniforms']>(name: K, data: T['Uniforms'][K]) {
    const { gl, uniformInfo } = this;
    if (!uniformInfo[name]) throw new Error(`set ${name} fail`);
    const { type, location } = uniformInfo[name];

    // TODO: add cache 只有变化了才有gl call
    switch (type) {
      case 0x1406: // FLOAT
        gl.uniform1f(location, data as unknown as gl.float);
        break;
      case 0x8b50: // FLOAT_VEC2
        gl.uniform2fv(location, data as unknown as gl.vec2);
        break;
      case 0x8b51: // FLOAT_VEC3
        gl.uniform3fv(location, data as unknown as gl.vec3);
        break;
      case 0x8b52: // FLOAT_VEC4
        gl.uniform4fv(location, data as unknown as gl.vec4);
        break;

      case 0x8b5a: // _MAT2
        gl.uniformMatrix2fv(location, false, data as unknown as gl.mat2);
        break;
      case 0x8b5b: // _MAT3
        gl.uniformMatrix3fv(location, false, data as unknown as gl.mat3);
        break;
      case 0x8b5c: // _MAT4
        gl.uniformMatrix4fv(location, false, data as unknown as gl.mat4);
        break;

      case 0x1404:
      case 0x8b56: // INT, BOOL
        gl.uniform1i(location, data as unknown as gl.bool | gl.int);
        break;
      case 0x8b53:
      case 0x8b57: // INT_VEC2
        gl.uniform2iv(location, data as unknown as gl.vec2);
        break;
      case 0x8b54:
      case 0x8b58: // INT_VEC3
        gl.uniform3iv(location, data as unknown as gl.vec3);
        break;
      case 0x8b55:
      case 0x8b59: // INT_VEC4
        gl.uniform4iv(location, data as unknown as gl.vec4);
        break;

      // WebGL2
      // case 0x1405: // UINT
      //   gl.uniform1ui(location, data as unknown as gl.uint); break;
      // case 0x8dc6: // UINT_VEC2
      //   gl.uniform2uiv(location, data as unknown as gl.vec2); break;
      // case 0x8dc7: // UINT_VEC3
      //   gl.uniform3uiv(location, data as unknown as gl.vec3); break;
      // case 0x8dc8: // UINT_VEC4
      //   gl.uniform4uiv(location, data as unknown as gl.vec4); break;

      // TODO: locate texture 这里是否承担自动分配纹理单元的职责呢，感觉是可以的
      // three是WebGLTexture里去做分配，可能这里支持的类型会比较多，纹理也分多种类型
      // 这里可能要想想,three里面还有纹理单元复用的检查，貌似纹理单元
      // 纹理单元的分配复用可能在纹理少的模型上收益大，重复缓存的命中率高

      case 0x8b5e: // SAMPLER_2D
      case 0x8d66: // SAMPLER_EXTERNAL_OES
      case 0x8dca: // INT_SAMPLER_2D
      case 0x8dd2: // UNSIGNED_INT_SAMPLER_2D
      case 0x8b62: // SAMPLER_2D_SHADOW
        gl.uniform1i(location, data as unknown as gl.sampler2D);
        break;

      case 0x8b5f: // SAMPLER_3D
      case 0x8dcb: // INT_SAMPLER_3D
      case 0x8dd3: // UNSIGNED_INT_SAMPLER_3D
        gl.uniform1i(location, data as unknown as gl.sampler2D);
        break;

      case 0x8b60: // SAMPLER_CUBE
      case 0x8dcc: // INT_SAMPLER_CUBE
      case 0x8dd4: // UNSIGNED_INT_SAMPLER_CUBE
      case 0x8dc5: // SAMPLER_CUBE_SHADOW
        gl.uniform1i(location, data as unknown as gl.sampler2D);
        break;

      case 0x8dc1: // SAMPLER_2D_ARRAY
      case 0x8dcf: // INT_SAMPLER_2D_ARRAY
      case 0x8dd7: // UNSIGNED_INT_SAMPLER_2D_ARRAY
      case 0x8dc4: // SAMPLER_2D_ARRAY_SHADOW
        gl.uniform1i(location, data as unknown as gl.sampler2D);
        break;
    }

    return this;
  }

  run(count: number) {
    // 全局的状态重置可以外部控制，这个program仅仅处理shader相关的
    // 不过记录在program里貌似也是可以的相当于做个状态缓存，执行这个program需要什么状态为什么取值

    const { gl } = this;

    // 初始化Attribute 这一行可能挪到setAttribute内更新，毕竟Attribute的更新还是不频繁的
    const attributeNames = Object.keys(this.attributeSetting);

    for (let i = 0, il = attributeNames.length; i < il; i++) {
      const info = this.attributeInfo[attributeNames[i]];
      const cfg = this.attributeSetting[attributeNames[i]];

      gl.bindBuffer(gl.ARRAY_BUFFER, cfg.buffer);
      gl.enableVertexAttribArray(info.location);
      gl.vertexAttribPointer(
        info.location,
        cfg.size,
        cfg.type,
        cfg.normalized,
        cfg.stride,
        cfg.offset,
      );
    }

    // draw call count 是否能通过attribute得知呢？感觉是可以的
    gl.drawArrays(gl.TRIANGLES, 0, count);
  }

  dispose() {
    if (this.glProgram) {
      const shaders = this.gl.getAttachedShaders(this.glProgram);
      shaders.forEach(shader => this.gl.deleteShader(shader));
      this.gl.deleteProgram(this.glProgram);

      // 哪里创建资源就得负责那些资源的回收
    }
  }
}

//#region utils
function getUniformInfo<T>(gl: WebGLRenderingContext, program: WebGLProgram) {
  const uniformLen = gl.getProgramParameter(
    program,
    gl.ACTIVE_UNIFORMS,
  ) as number;
  const uniformInfo = {} as UnifromInfo<T>;

  for (let i = 0; i < uniformLen; ++i) {
    const info = gl.getActiveUniform(program, i);
    uniformInfo[info.name] = {
      name: info.name,
      size: info.size,
      type: info.type,
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
      name: info.name,
      type: info.type,
      size: info.size,
      // location: gl.getAttribLocation(program, info.name),
      location: i,
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
    console.error(
      'compile shader fail',
      gl.getShaderInfoLog(shader),
      addLineNumber(shaderSource),
    );
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
//#endregion
