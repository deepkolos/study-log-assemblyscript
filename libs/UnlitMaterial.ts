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
export const unlitMaterialProgram: GLProgram<UnlitMatrialTypeMap> =
  new GLProgram(
    glsl`
  // geometry
  attribute vec3 aPosition;
  attribute vec2 aTexcoord;
  // attribute vec3 aNormal;

  // camera
  uniform mat4 uProjection;
  uniform mat4 uCameraPoseInvert;
  uniform mat4 uModelPose;

  // fragment shader
  varying vec2 vTexcoord;
  varying vec3 vNormal;

  void main() {
    vec4 pCameraFrame = uCameraPoseInvert * uModelPose * vec4(aPosition, 1);
    vec4 pNearPlane = uProjection * pCameraFrame;

    // vNormal = aNormal;
    vTexcoord = aTexcoord;

    gl_Position = pNearPlane;
  }
  `,
    glsl`
  precision mediump float;
  // light
  uniform vec4 uAmbientLight;
  uniform vec4 uDirectionalLight;
  uniform vec4 uPointLight;
  uniform vec4 uPointLightPosition;
  uniform mat4 uDirectionalLightPose;
  
  // matrial
  uniform sampler2D uBaseColorTexture;
  uniform vec3 uBaseColor;

  // varying
  varying vec2 vTexcoord;
  varying vec4 vNormal;

  void main() {
    gl_FragColor = texture2D(uBaseColorTexture, vTexcoord);
  }
  `,
  );
