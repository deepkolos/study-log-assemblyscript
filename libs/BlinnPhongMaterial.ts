import { AttributeSetting, CommonProgramTypeMap, GLProgram } from './GLProgram';
import { glsl } from './utils';

type BlinnPhongMatrialTypeMap<U = {}, A = {}> = CommonProgramTypeMap<
  U & {
    uBaseColorTexture: gl.sampler2D; // texture unit
    uBaseColor: gl.vec3;

    // light
    uAmbientLight: gl.vec4;
    uAmbientLightIntensity: gl.float;

    uPointLight: gl.vec4;
    uPointLightPosition: gl.vec3;
    uPointLightIntensity: gl.float;

    uDirectionalLight: gl.vec4;
    uDirectionalLightPose: gl.mat4;
    uDirectionalLightIntensity: gl.float;
  },
  A & {
    aNormal: AttributeSetting;
  }
>;

export const blinnPhongMaterialProgram: GLProgram<BlinnPhongMatrialTypeMap> =
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
  varying vec3 vNormal;
  varying vec3 vPointWorld;

  void main() {
    vec4 pWorldFrame = uModelPose * vec4(aPosition, 1);
    vec4 pCameraFrame = uCameraPoseInvert * pWorldFrame;
    vec4 pNearPlane = uProjection * pCameraFrame;

    vNormal = aNormal;
    vTexcoord = aTexcoord;
    vPointWorld = pWorldFrame;

    gl_Position = pNearPlane;
  }
  `,
    glsl`
  precision mediump float;
  // light
  uniform vec4 uAmbientLight;
  uniform float uAmbientLightIntensity;

  uniform vec4 uPointLight;
  uniform vec3 uPointLightPosition; // 世界坐标系
  uniform float uPointLightIntensity;

  uniform vec4 uDirectionalLight;
  uniform mat4 uDirectionalLightPose;
  uniform float uDirectionalLightIntensity;
  
  // matrial
  uniform sampler2D uBaseColorTexture;
  uniform vec3 uBaseColor;

  // varying
  varying vec2 vTexcoord;
  varying vec3 vNormal;
  varying vec3 vPointWorld;

  void main() {
    vec4 textureColor = texture2D(uBaseColorTexture, vTexcoord);
    vec4 diffuselyReflectedLight = uPointLight * uPointLightIntensity / pow(length(uPointLightPosition, vPointWorld), 2) * max(0.0, vNormal * vPointWorld);
    vec4 specularReflectedLight = 

    gl_FragColor = textureColor * (uAmbientLight + diffuselyReflectedLight);
  }
  `,
  );
