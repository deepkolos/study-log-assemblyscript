//#region WebGL
export type GLenum = u32;
export type GLint = i32;
export type GLuint = u32;
export type GLsizei = i32;
export type GLintptr = i32; //i64;

export type WebGLProgram = u32; //externref;
export type WebGLShader = u32;
export type WebGLBuffer = u32;
export type WebGLFramebuffer = u32;
export type WebGLRenderbuffer = u32;
export type WebGLTexture = u32;

export type WebGLRenderingContextId = u32;

export type DOMString = string;

// prettier-ignore
namespace gl {
  export const FLOAT: GLenum = 0x1406;

  export const ARRAY_BUFFER: GLenum = 0x8892;
  export const COMPILE_STATUS: GLenum = 0x8b81;
  export const LINK_STATUS: GLenum = 0x8b82;
  export const VERTEX_SHADER: GLenum = 0x8B31;
  export const FRAGMENT_SHADER: GLenum = 0x8B30;
  export const STATIC_DRAW: GLenum = 0x88E4;
  export const TRIANGLES: GLenum = 0x0004;

  export declare function createShader(typ: GLenum): WebGLShader;
  export declare function shaderSource(shader: WebGLShader, source: string): void;
  export declare function compileShader(shader: WebGLShader): void;
  export declare function getShaderParameter(shader: WebGLShader, pname: GLenum): bool; // any
  export declare function getShaderInfoLog(shader: WebGLShader): DOMString;
  
  export declare function createProgram(): WebGLProgram;
  export declare function attachShader(program: WebGLProgram, shader: WebGLShader): void;
  export declare function linkProgram(program: WebGLProgram): void;
  export declare function getProgramParameter(program: WebGLProgram, pname: GLenum): bool; // any
  export declare function getProgramInfoLog(program: WebGLProgram): DOMString;
  
  export declare function getAttribLocation(program: WebGLProgram, name: string): GLint;
  export declare function createBuffer(): WebGLBuffer;
  export declare function bindBuffer(target: GLenum, buffer: WebGLBuffer): void;
  // export declare function bufferData<T>(target: GLenum, data: StaticArray<T>, usage: GLenum): void;
  export declare function bufferData(target: GLenum, data: Float32Array, usage: GLenum): void;
  export declare function useProgram(program: WebGLProgram): void;
  export declare function enableVertexAttribArray(index: GLuint): void;
  export declare function drawArrays(mode: GLenum, first: GLint, count: GLsizei): void;
  export declare function vertexAttribPointer(indx: GLint, size: GLint, typ: GLenum,
    normalized: /*GLboolean*/GLint, stride: GLsizei, offset: GLintptr): void;
}
//#endregion

namespace console {
  export declare function log(str: string): void;
}

//#region GLTF
class GLTFAccessor {
  bufferView: u32;
  byteOffset: u32;
  componentType: u32;
  count: u32;
  max: u32[] = [];
  min: u32[] = [];
  type: string = '';
}

class GLTFAsset {
  version: string = '';
  generator: string = '';
}

class GLTFBufferView {
  buffer: u32;
  byteLength: u32;
  byteOffset: u32;
  target: u32;
}

class GLTFBuffer {
  byteLength: u32;
  uri: string = '';
  // data: ArrayBuffer;
}

class GLTFImage {
  uri: string = '';
}

class GLTFMaterialpbrMetallicRoughness {
  baseColorTexture: GLTFMaterialpbrMetallicRoughnessTexture =
    new GLTFMaterialpbrMetallicRoughnessTexture();
  metallicRoughnessTexture: GLTFMaterialpbrMetallicRoughnessTexture =
    new GLTFMaterialpbrMetallicRoughnessTexture();
}

class GLTFMaterialpbrMetallicRoughnessTexture {
  index: u32;
}

class GLTFMaterial {
  name: string = '';
  pbrMetallicRoughness: GLTFMaterialpbrMetallicRoughness =
    new GLTFMaterialpbrMetallicRoughness();
}
class GLTFMeshPrimitiveAttributes {
  NORMAL: u32;
  POSITION: u32;
  TANGENT: u32;
  TEXCOORD_0: u32;
}

class GLTFMeshPrimitive {
  attributes: GLTFMeshPrimitiveAttributes = new GLTFMeshPrimitiveAttributes();
  indices: u32;
  material: u32;
  mode: u32;
}

class GLTFMesh {
  name: string = '';
  primitives: Array<GLTFMeshPrimitive> = [];
}

class GLTFNode {
  mesh: u32;
  name: string = '';
}

class GLTFSampler {}

class GLTFScene {
  name: string = '';
  nodes: Array<u32> = [];
}

class GLTFTexture {
  sampler: u32;
  source: u32;
}

class GLTF {
  accessors: Array<GLTFAccessor> = [];
  asset: GLTFAsset = new GLTFAsset();
  bufferViews: Array<GLTFBufferView> = [];
  buffers: Array<GLTFBuffer> = [];
  images: Array<GLTFImage> = [];
  materials: Array<GLTFMaterial> = [];
  meshes: Array<GLTFMesh> = [];
  nodes: Array<GLTFNode> = [];
  samplers: Array<GLTFSampler> = [];
  scene: u32 = 0;
  scenes: Array<GLTFScene> = [];
  textures: Array<GLTFTexture> = [];
}

const gltf = new GLTF();

export function glTFSetAsset(version: string, generator: string): void {
  gltf.asset.version = version;
  gltf.asset.generator = generator;
}
export function glTFAddAccessor(
  bufferView: u32,
  byteOffset: u32,
  componentType: u32,
  count: u32,
  type: string,
  max: Array<u32>,
  min: Array<u32>,
): void {
  const accessor = new GLTFAccessor();
  accessor.bufferView = bufferView;
  accessor.byteOffset = byteOffset;
  accessor.componentType = componentType;
  accessor.count = count;
  accessor.type = type;
  accessor.max = max;
  accessor.max = min;
  gltf.accessors.push(accessor);
}
export function glTFAddBufferView(
  buffer: u32,
  byteLength: u32,
  byteOffset: u32,
  target: u32,
): void {
  const bufferView = new GLTFBufferView();
  bufferView.buffer = buffer;
  bufferView.byteLength = byteLength;
  bufferView.byteOffset = byteOffset;
  bufferView.target = target;
  gltf.bufferViews.push(bufferView);
}
// export function glTFAddBuffer(byteLength: u32, data: ArrayBuffer): void {
//   const buffer = new GLTFBuffer();
//   buffer.byteLength = byteLength;
//   buffer.data = data;
//   gltf.buffers.push(buffer);
// }
export function glTFAddBuffer(byteLength: u32): void {
  const buffer = new GLTFBuffer();
  buffer.byteLength = byteLength;
  gltf.buffers.push(buffer);
}
export function glTFAddImage(): void {
  const image = new GLTFImage();
  gltf.images.push(image);
}
export function glTFAddMaterial(
  name: string,
  pbrMetallicRoughnessBaseColorTextureIndex: u32,
  pbrMetallicRoughnessMetallicRoughnessTextureIndex: u32,
): void {
  const material = new GLTFMaterial();
  material.name = name;
  material.pbrMetallicRoughness.baseColorTexture.index =
    pbrMetallicRoughnessBaseColorTextureIndex;
  material.pbrMetallicRoughness.metallicRoughnessTexture.index =
    pbrMetallicRoughnessMetallicRoughnessTextureIndex;
  gltf.materials.push(material);
}
export function glTFAddMesh(name: string): u32 {
  const mesh = new GLTFMesh();
  mesh.name = name;
  return gltf.meshes.push(mesh);
}
export function glTFAddMeshPrimitive(
  meshIndex: u32,
  attributesNORMAL: u32,
  attributesPOSITION: u32,
  attributesTANGENT: u32,
  attributesTEXCOORD_0: u32,
  indices: u32,
  material: u32,
  mode: u32,
): u32 {
  const primitive = new GLTFMeshPrimitive();
  primitive.attributes.NORMAL = attributesNORMAL;
  primitive.attributes.POSITION = attributesPOSITION;
  primitive.attributes.TANGENT = attributesTANGENT;
  primitive.attributes.TEXCOORD_0 = attributesTEXCOORD_0;
  primitive.indices = indices;
  primitive.material = material;
  primitive.mode = mode;

  return gltf.meshes[meshIndex].primitives.push(primitive);
}
export function glTFAddNode(name: string, mesh: u32): void {
  const node = new GLTFNode();
  node.name = name;
  node.mesh = mesh;
  gltf.nodes.push(node);
}
export function glTFAddSampler(): void {
  const sampler = new GLTFSampler();
  gltf.samplers.push(sampler);
}
export function glTFAddScene(name: string, nodes: Array<u32>): void {
  const scene = new GLTFScene();
  scene.name = name;
  scene.nodes = nodes;
  gltf.scenes.push(scene);
}
export function glTFAddTexture(sampler: u32, source: u32): void {
  const texture = new GLTFTexture();
  texture.sampler = sampler;
  texture.source = source;
  gltf.textures.push(texture);
}
// #endregion

export function main(): void {
  // 只适合局部资源的解析逻辑在wasm里做，结构复杂的都比较繁琐，js处理方便
  // wasm没有基础设施，引入这些基础设置就会导致非常巨大的体积，全wasm显然是不理想的
  // wasm 和 js之间的复杂数据结构通信必须是序列化的形式，这也太难了，要么就是有东西能够自动创建这些复杂数据传递的胶水代码，不然太不方便了
  // rust是通过serde来做序列化和反序列化，来实现复杂数据的传递
  console.log('gltf info:');
  console.log(gltf.asset.generator + gltf.asset.version);
  console.log(gltf.accessors.length.toString());
  console.log(gltf.bufferViews.length.toString());
  console.log(gltf.buffers.length.toString());
  console.log(gltf.accessors[0].bufferView.toString());
}
