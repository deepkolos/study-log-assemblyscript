// oasis里用了引用计数，three则使用weakMap，进一步简化资源的维护，这里就先沿用GLTF内资源复用，要不后面再考虑，需要遍历资源情况，不过也只有GLTF内是显式标记了复用情况
export class GLTFGLCache {
  buffer: Map<number, WebGLBuffer>; // gltf accessor -> gl buffer
  texture: Map<number, WebGLTexture>; // gltf texture -> gl texture
}
