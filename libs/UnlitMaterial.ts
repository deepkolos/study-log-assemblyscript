import { CommonProgramTypeMap, GLProgram } from './GLProgram';
import { glsl } from './utils';

type UnlitMatrialTypeMap<U = {}, A = {}> = CommonProgramTypeMap<
  U & {
    uBaseColorTexture: gl.sampler2D; // texture unit
    uBaseColor: gl.vec3;
  },
  A
>;

// webgl program应该是单例的? 负责一类配置的渲染，还是一个mesh对应一个program？这里显示单例，如果是单例就意味着attribute和uniform每次都得重新设置了
// three的program是按照功能特性组装起来的，是按照特性作为单例，而不仅仅是matrial, 比如阴影+PBR和纯粹PBR是一个，阴影也包含硬阴影软阴影
// three shader之前也做了复用，我这里就为了练习，这一层就不复用了，主要想要复用希望是vscode也支持的包括提示寻址等等
export const unlitMaterialProgram: GLProgram<UnlitMatrialTypeMap> =
  new GLProgram(
    glsl`
  // geometry
  attribute vec3 aPosition;
  attribute vec2 aTexcoord;
  attribute vec3 aNormal;

  // camera
  uniform mat4 uProjection;
  uniform mat4 uCameraPoseInvert;
  uniform mat4 uModelPose;

  // fragment shader
  varying vec2 vTexcoord;

  void main() {
    vec4 pCameraFrame = uCameraPoseInvert * uModelPose * vec4(aPosition, 1);
    vec4 pNearPlane = uProjection * pCameraFrame;

    vTexcoord = aTexcoord;

    gl_Position = pNearPlane;
  }
  `,
    glsl`
  precision mediump float;

  // matrial
  uniform sampler2D uBaseColorTexture;
  uniform vec3 uBaseColor;

  // varying
  varying vec2 vTexcoord;

  void main() {
    gl_FragColor = texture2D(uBaseColorTexture, vTexcoord);
  }
  `,
  );
