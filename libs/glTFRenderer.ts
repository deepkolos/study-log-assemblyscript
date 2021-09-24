import { AttributeSetting } from './GLProgram';
import { GLTFGLCache } from './GLTFGLCache';
import { isPowerOfTwo, Matrix4 } from './Math';
import { unlitMaterialProgram } from './UnlitMaterial';
import { GlTf } from './GLTF.d';
import { blinnPhongMaterialProgram } from './BlinnPhongMaterial';

const WEBGL_COMPONENT_TYPES = {
  5120: Int8Array,
  5121: Uint8Array,
  5122: Int16Array,
  5123: Uint16Array,
  5125: Uint32Array,
  5126: Float32Array,
};

const WEBGL_TYPE_SIZES = {
  SCALAR: 1,
  VEC2: 2,
  VEC3: 3,
  VEC4: 4,
  MAT2: 4,
  MAT3: 9,
  MAT4: 16,
};

interface LightCfg {
  uAmbientLight: gl.vec4;
  uAmbientLightIntensity: gl.float;
  uPointLight: gl.vec4;
  uPointLightPosition: gl.vec3;
  uPointLightIntensity: gl.float;
  uDirectionalLight: gl.vec4;
  uDirectionalLightPose: gl.mat4;
  uDirectionalLightIntensity: gl.float;
  uSpecularShiness: gl.float;
}

export class GLTFWebGLRenderer {
  private cache: GLTFGLCache;
  private gl: WebGLRenderingContext;
  private gltf: GlTf;
  projection: Matrix4;
  cameraPoseInvert: Matrix4;
  modelPose: Matrix4;
  light: LightCfg;

  constructor(gl: WebGLRenderingContext, gltf: GlTf) {
    this.gl = gl;
    this.gltf = gltf;
    this.cache = new GLTFGLCache();
    // unlitMaterialProgram.compile(gl);
    blinnPhongMaterialProgram.compile(gl);
    // TODO: program不hardcode
    // FIXME: 通过映射就类型就丢了
  }

  render(
    projection: Matrix4,
    cameraPoseInvert: Matrix4,
    modelPose: Matrix4,
    light: LightCfg,
  ) {
    this.projection = projection;
    this.cameraPoseInvert = cameraPoseInvert;
    this.modelPose = modelPose;
    this.light = light;
    // 光照信息，threejs是挂在场景图里，GLTF也能看到光照的定义,这里就先直接传递了

    this.renderScene(this.gltf.scene);
  }

  renderScene(sceneIndex: number) {
    const sceneDef = this.gltf.scenes[sceneIndex];

    for (let i = 0, il = sceneDef.nodes.length; i < il; i++) {
      this.renderNode(sceneDef.nodes[i], this.modelPose);
    }
  }

  renderNode(nodeIndex: number, parentWorldMatrix: Matrix4) {
    const nodeDef = this.gltf.nodes[nodeIndex];
    const meshIndex = nodeDef.mesh;
    const worldMatrix = new Matrix4();
    const localMatrix = new Matrix4().identity();

    // 生成local matrix, 优先使用TRS
    // 矩阵计算是每次渲染都得重新运算么？
    if (nodeDef.matrix) localMatrix.copyFrom(nodeDef.matrix);
    if (nodeDef.rotation && nodeDef.scale && nodeDef.translation)
      localMatrix.compose(
        nodeDef.translation as unknown as gl.vec3,
        nodeDef.rotation as unknown as gl.vec4,
        nodeDef.scale as unknown as gl.vec3,
      );

    // 什么是左乘，什么是右乘？
    worldMatrix.copyFrom(localMatrix);
    worldMatrix.multiply(parentWorldMatrix);

    if (meshIndex !== undefined) this.renderMesh(meshIndex, worldMatrix);

    if (nodeDef.children)
      for (let i = 0, il = nodeDef.children.length; i < il; i++)
        this.renderNode(nodeDef.children[i], worldMatrix);
  }

  renderMesh(meshIndex: number, modelWorldMatrix: Matrix4) {
    const { gltf, gl, light } = this;
    const meshDef = gltf.meshes[meshIndex];

    // 这里可能使用不同的program, 不同的材质
    // GLTF可能内部指定了相机, three的mesh是不支持自定义相机的
    blinnPhongMaterialProgram.use();
    blinnPhongMaterialProgram.setUnifrom(
      'uCameraPoseInvert',
      this.cameraPoseInvert,
    );
    blinnPhongMaterialProgram.setUnifrom('uProjection', this.projection);
    blinnPhongMaterialProgram.setUnifrom('uModelPose', modelWorldMatrix);
    blinnPhongMaterialProgram.setUnifrom('uAmbientLight', light.uAmbientLight);
    blinnPhongMaterialProgram.setUnifrom(
      'uAmbientLightIntensity',
      light.uAmbientLightIntensity,
    );
    blinnPhongMaterialProgram.setUnifrom(
      'uSpecularShiness',
      light.uSpecularShiness,
    );
    // blinnPhongMaterialProgram.setUnifrom(
    //   'uDirectionalLight',
    //   light.uDirectionalLight,
    // );
    // blinnPhongMaterialProgram.setUnifrom(
    //   'uDirectionalLightIntensity',
    //   light.uDirectionalLightIntensity,
    // );
    // blinnPhongMaterialProgram.setUnifrom(
    //   'uDirectionalLightPose',
    //   light.uDirectionalLightPose,
    // );
    blinnPhongMaterialProgram.setUnifrom('uPointLight', light.uPointLight);
    blinnPhongMaterialProgram.setUnifrom(
      'uPointLightIntensity',
      light.uPointLightIntensity,
    );
    blinnPhongMaterialProgram.setUnifrom(
      'uPointLightPosition',
      light.uPointLightPosition,
    );

    for (let j = 0, jl = meshDef.primitives.length; j < jl; j++) {
      // attribute
      const primitiveDef = meshDef.primitives[j];
      // 生成attribute
      const positionSetting = this.uploadAttribute(
        primitiveDef.attributes.POSITION,
      );
      const texcoordSetting = this.uploadAttribute(
        primitiveDef.attributes.TEXCOORD_0,
      );
      const normalSetting = this.uploadAttribute(
        primitiveDef.attributes.NORMAL,
      );

      blinnPhongMaterialProgram.setAttribute('aPosition', positionSetting);
      blinnPhongMaterialProgram.setAttribute('aTexcoord', texcoordSetting);
      blinnPhongMaterialProgram.setAttribute('aNormal', normalSetting);

      // 纹理 也可以提前所有纹理，可以提前批量上传 变成gl的资源，不过可能一些是没使用的
      const material = gltf.materials[primitiveDef.material];
      const baseColorTexture = this.uploadTexture(
        material.pbrMetallicRoughness.baseColorTexture.index,
      );

      // 纹理单元分配逻辑
      const texUnit = 0;
      gl.activeTexture(gl.TEXTURE0 + texUnit);
      gl.bindTexture(gl.TEXTURE_2D, baseColorTexture);
      blinnPhongMaterialProgram.setUnifrom('uBaseColorTexture', texUnit);

      // 绘制
      const accessor = gltf.accessors[primitiveDef.attributes.POSITION];
      const itemSize = WEBGL_TYPE_SIZES[accessor.type];
      // console.log(accessor.count * itemSize);
      blinnPhongMaterialProgram.run(accessor.count * itemSize);
    }
  }

  uploadAttribute(accessorIndex: number): AttributeSetting {
    const { gl, gltf, cache } = this;
    const accessor = gltf.accessors[accessorIndex];
    const itemSize = WEBGL_TYPE_SIZES[accessor.type];
    const TypedArray = WEBGL_COMPONENT_TYPES[accessor.componentType];

    const elementBytes = TypedArray.BYTES_PER_ELEMENT;
    const byteOffset = accessor.byteOffset | 0;
    const itemBytes = elementBytes * itemSize;
    const byteStride =
      accessor.bufferView !== undefined
        ? gltf.bufferViews[accessor.bufferView].byteStride
        : undefined;
    const normalized = !!accessor.normalized;

    const hasCache = cache.buffer.has(accessorIndex);

    if (!hasCache) {
      const bufferViewDef = gltf.bufferViews[accessor.bufferView];
      const bufferDef = gltf.buffers[bufferViewDef.buffer];

      const arrayBuffer = bufferDef.data.slice(
        bufferViewDef.byteOffset,
        bufferViewDef.byteOffset + bufferViewDef.byteLength,
      );

      const typedArray = new TypedArray(
        arrayBuffer,
        byteOffset,
        accessor.count * itemSize,
      );

      // upload attribute to gl
      const glBuffer = gl.createBuffer();
      gl.bindBuffer(gl.ARRAY_BUFFER, glBuffer);
      gl.bufferData(gl.ARRAY_BUFFER, typedArray, gl.STATIC_DRAW);

      cache.buffer.set(accessorIndex, glBuffer);
    }

    return {
      size: itemSize,
      buffer: cache.buffer.get(accessorIndex),
      type: gl.FLOAT, // 不知道如何确定
      normalized,
      stride: byteStride,
      offset: byteOffset,
    };
  }

  uploadTexture(textureIndex: number) {
    const { gltf, gl, cache } = this;
    const textureDef = gltf.textures[textureIndex];
    const image = gltf.images[textureDef.source];
    const sampler = gltf.samplers[textureDef.sampler];

    if (cache.texture.has(textureIndex)) return cache.texture.get(textureIndex);

    const colorFormat = image.uri.match(/\.jpg$/i) ? gl.RGB : gl.RGBA;

    const textureGL = gl.createTexture();
    gl.bindTexture(gl.TEXTURE_2D, textureGL);

    gl.texImage2D(
      gl.TEXTURE_2D,
      0,
      colorFormat,
      colorFormat,
      gl.UNSIGNED_BYTE,
      image.el,
    );

    // 回忆下各种纹理采样类型
    if (
      isPowerOfTwo(image.el.naturalWidth) &&
      isPowerOfTwo(image.el.naturalHeight)
    ) {
      // image.el.naturalWidth
      // 2的幂次方如何判断，二进制是只有第一位是1，其他都是0，循环1的位置用掩码判断
      // 有没有更直接的方法呢? 除了1 其他都是偶数
      // 这个牛皮 (n & (n - 1)) === 0 明白了就是利用了2进制的特点减一后0b100 & 0b011 === 0
      // three也是这个但是多了一个判断 (value & value - 1) === 0 && value !== 0;
      gl.generateMipmap(gl.TEXTURE_2D); // 需要上传纹理后再生成mipmap
      gl.texParameteri(
        gl.TEXTURE_2D,
        gl.TEXTURE_MIN_FILTER,
        gl.LINEAR_MIPMAP_LINEAR, // mipmap生成失败导致会设置无效 LINEAR_MIPMAP_LINEAR NEAREST_MIPMAP_LINEAR LINEAR_MIPMAP_NEAREST NEAREST_MIPMAP_NEAREST
      );
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
      // gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
      // gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
    } else {
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
    }

    cache.texture.set(textureIndex, textureGL);

    return textureGL;
  }
}
