import { AttributeSetting } from './GLProgram';
import { GLTFGLCache } from './GLTFGLCache';
import { isPowerOfTwo, Matrix4 } from './Math';
import { unlitMaterialProgram } from './UnlitMaterial';

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

export class GLTFWebGLRenderer {
  private cache: GLTFGLCache;
  private gl: WebGLRenderingContext;
  private gltf: GLTF;

  constructor(gl: WebGLRenderingContext, gltf: GLTF) {
    this.gl = gl;
    this.gltf = gltf;
    this.cache = new GLTFGLCache();
    unlitMaterialProgram.compile(gl);
  }

  // TODO: 拆分阶段
  render(projection: Matrix4, cameraPoseInvert: Matrix4, modelPose: Matrix4) {
    const { gltf, gl } = this;
    const sceneDef = gltf.scenes[gltf.scene];

    for (let i = 0, il = sceneDef.nodes.length; i < il; i++) {
      const nodeIndex = sceneDef.nodes[i];
      const nodeDef = gltf.nodes[nodeIndex];
      const meshIndex = nodeDef.mesh;

      if (meshIndex === undefined) continue;

      const meshDef = gltf.meshes[meshIndex];
      // 这里可能使用不同的program, 不同的材质
      unlitMaterialProgram.use();
      unlitMaterialProgram.setUnifrom('uCameraPoseInvert', cameraPoseInvert);
      unlitMaterialProgram.setUnifrom('uProjection', projection);
      unlitMaterialProgram.setUnifrom('uModelPose', modelPose);

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

        unlitMaterialProgram.setAttribute('aPosition', positionSetting);
        unlitMaterialProgram.setAttribute('aTexcoord', texcoordSetting);

        // 纹理
        const material = gltf.materials[primitiveDef.material];
        const baseColorTexture = this.uploadTexture(
          material.pbrMetallicRoughness.baseColorTexture.index,
        );

        // 纹理单元分配逻辑
        const texUnit = 1;
        gl.activeTexture(gl.TEXTURE0 + texUnit);
        gl.bindTexture(gl.TEXTURE_2D, baseColorTexture);
        unlitMaterialProgram.setUnifrom('uBaseColorTexture', texUnit);

        // 绘制
        const accessor = gltf.accessors[primitiveDef.attributes.POSITION];
        const itemSize = WEBGL_TYPE_SIZES[accessor.type];

        unlitMaterialProgram.run(accessor.count * itemSize);
      }
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
