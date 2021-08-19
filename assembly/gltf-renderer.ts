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

namespace console {
  export declare function log(str: string): void;
}

class GLTFAccessor {
  bufferView: u32 = 0;
  byteOffset: u32 = 0;
  componentType: u32 = 0;
  count: u32 = 0;
  max: u32[] = [];
  min: u32[] = [];
  type: string = '';
}

class GLTFAsset {
  version: string = '';
  generator: string = '';
}

class GLTFBufferView {}

class GLTFBuffer {}

class GLTFImage {}

class GLTFMaterial {}

class GLTFMesh {}

class GLTFNode {}

class GLTFSampler {}

class GLTFScene {}

class GLTFTexture {}

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

  // constructor() {
  //   this.accessors = [];
  //   this.asset = new GLTFAsset();
  //   this.bufferViews = [];
  //   this.buffers = [];
  //   this.images = [];
  //   this.materials = [];
  //   this.meshes = [];
  //   this.nodes = [];
  //   this.samplers = [];
  //   this.scenes = [];
  //   this.textures = [];
  //   this.scene = 0;
  // }
}

const gltf = new GLTF();

export function glTFSetAsset(version: string, generator: string): void {
  gltf.asset.version = version;
  gltf.asset.generator = generator;
}
export function glTFAddAccessor(): void {
  const accessor = new GLTFAccessor();
  gltf.accessors.push(accessor);
}
export function glTFAddBufferView(): void {
  const bufferView = new GLTFBufferView();
  gltf.bufferViews.push(bufferView);
}
export function glTFAddBuffer(): void {
  const buffer = new GLTFBuffer();
  gltf.buffers.push(buffer);
}
export function glTFAddImage(): void {
  const image = new GLTFImage();
  gltf.images.push(image);
}
export function glTFAddMaterial(): void {
  const material = new GLTFMaterial();
  gltf.materials.push(material);
}
export function glTFAddMesh(): void {
  const mesh = new GLTFMesh();
  gltf.meshes.push(mesh);
}
export function glTFAddNode(): void {
  const node = new GLTFNode();
  gltf.nodes.push(node);
}
export function glTFAddSampler(): void {
  const sampler = new GLTFSampler();
  gltf.samplers.push(sampler);
}
export function glTFAddScene(): void {
  const scene = new GLTFScene();
  gltf.scenes.push(scene);
}
export function glTFAddTexture(): void {
  const texture = new GLTFTexture();
  gltf.textures.push(texture);
}

export function main(): void {
  console.log('here');
}
