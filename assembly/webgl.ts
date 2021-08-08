declare function glCall(fnId: i32): void;

export type GLenum = u32;

export const ARRAY_BUFFER: GLenum = 0x8892;
export const COMPILE_STATUS: GLenum = 0x8b81;
export const LINK_STATUS: GLenum = 0x8b82;
export const FLOAT: GLenum = 0x1406;

@final
@unmanaged
class WebGLRenderingContext {
  @inline get ARRAY_BUFFER(): GLenum {
    return ARRAY_BUFFER;
  }
  @inline get COMPILE_STATUS(): GLenum {
    return COMPILE_STATUS;
  }
  @inline get LINK_STATUS(): GLenum {
    return LINK_STATUS;
  }
  @inline get FLOAT(): GLenum {
    return FLOAT;
  }

  @inline createShader() {}
  @inline shaderSource() {}
  @inline compileShader() {}
  @inline getShaderParameter() {}
  @inline getShaderInfoLog() {}

  @inline createProgram() {}
  @inline attachShader() {}
  @inline linkProgram() {}
  @inline getProgramParameter() {}
  @inline getProgramInfoLog() {}

  @inline getAttribLocation() {}
  @inline createBuffer() {}
  @inline bindBuffer() {}
  @inline bufferData() {}
  @inline useProgram() {}
  @inline enableVertexAttribArray() {}
  @inline drawArrays() {}
  @inline vertexAttribPointer() {}
}

export function main() {}
