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
  export declare function bufferData<T>(target: GLenum, data: StaticArray<T>, usage: GLenum): void;
  export declare function useProgram(program: WebGLProgram): void;
  export declare function enableVertexAttribArray(index: GLuint): void;
  export declare function drawArrays(mode: GLenum, first: GLint, count: GLsizei): void;
  export declare function vertexAttribPointer(indx: GLint, size: GLint, typ: GLenum,
    normalized: /*GLboolean*/GLint, stride: GLsizei, offset: GLintptr): void;
}

export namespace console {
  export declare function log(str: string): void;
}

export function main(): void {
  let success: bool;

  const VS_SHADER = `
attribute vec2 a_position;

void main() {
  gl_Position = vec4(a_position, 0, 1);
}`;
  const FS_SHADER = `
precision mediump float;

void main() {
  gl_FragColor = vec4(0, 0.5, 1, 1);
}`;

  // 先回忆一下怎么绘制三角形的。。。这东西不使用就会忘记的了
  const vs = gl.createShader(gl.VERTEX_SHADER);
  gl.shaderSource(vs, VS_SHADER);
  gl.compileShader(vs);
  success = gl.getShaderParameter(vs, gl.COMPILE_STATUS);
  if (!success) {
    console.log('compile   vs shader fail' + gl.getShaderInfoLog(vs));
    return;
  }

  const fs = gl.createShader(gl.FRAGMENT_SHADER);
  gl.shaderSource(fs, FS_SHADER);
  gl.compileShader(fs);
  success = gl.getShaderParameter(fs, gl.COMPILE_STATUS);
  if (!success) {
    console.log('compile fs shader fail' + gl.getShaderInfoLog(fs));
    return;
  }

  const program = gl.createProgram();
  gl.attachShader(program, vs);
  gl.attachShader(program, fs);
  gl.linkProgram(program);
  success = gl.getProgramParameter(program, gl.LINK_STATUS);
  if (!success) {
    console.log('link program fail' + gl.getProgramInfoLog(program));
    return;
  }

  const positionLocation = gl.getAttribLocation(program, 'a_position');
  const positionBuffer = gl.createBuffer();

  gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);
  const bufferData: StaticArray<f32> = [0, 0.5, -0.5, 0, 0.5, 0];
  gl.bufferData<f32>(gl.ARRAY_BUFFER, bufferData, gl.STATIC_DRAW);
  gl.useProgram(program);
  gl.enableVertexAttribArray(positionLocation);
  gl.vertexAttribPointer(positionLocation, 2, gl.FLOAT, 0, 0, 0);

  // const t1 = Date.now()
  for (let i = 0; i < 1_000_000; i++) {
    gl.drawArrays(gl.TRIANGLES, 0, 3);
  }
  // const t2 = Date.now()
  // console.log((t2 - t1).toString())
}
