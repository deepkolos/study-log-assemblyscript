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

    uSpecularShiness: gl.float;

    // camera
    uCameraPosition: gl.vec3;
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
  varying vec4 vPointWorld;

  void main() {
    vec4 pWorldFrame = uModelPose * vec4(aPosition, 1);
    vec4 pCameraFrame = uCameraPoseInvert * pWorldFrame;
    vec4 pNearPlane = uProjection * pCameraFrame;
    vec3 normal = mat3(uModelPose) * aNormal;

    // 记得法线的变换不太一样? 法线不需要位移,只需要应用旋转
    vNormal = normal;
    vTexcoord = aTexcoord;
    vPointWorld = pWorldFrame;

    gl_Position = pNearPlane;
  }
  `,
    glsl`
  precision mediump float;
  // camera
  uniform vec3 uCameraPosition;

  // light (多光源的话如何实现呢？
  uniform vec4 uAmbientLight;
  uniform float uAmbientLightIntensity;

  uniform vec4 uPointLight;
  uniform vec3 uPointLightPosition; // 世界坐标系
  uniform float uPointLightIntensity;

  uniform vec4 uDirectionalLight;
  uniform mat4 uDirectionalLightPose;
  uniform float uDirectionalLightIntensity;

  uniform float uSpecularShiness;
  
  // matrial
  uniform sampler2D uBaseColorTexture;
  uniform vec3 uBaseColor;

  // varying
  varying vec2 vTexcoord;
  varying vec3 vNormal;
  varying vec4 vPointWorld;

  void main() {
    vec4 textureColor = texture2D(uBaseColorTexture, vTexcoord);

    vec3 normal = normalize(vNormal);
    vec3 viewDirection = normalize(uCameraPosition - vPointWorld.xyz);
    vec3 pointLightDirection = normalize(uPointLightPosition - vPointWorld.xyz);
    vec3 bisector = normalize(viewDirection + pointLightDirection);
    // 这里的I/r^2的r不知道是什么单位
    vec4 pointLightOnSurface = uPointLight * uPointLightIntensity / pow(length(uPointLightPosition - vPointWorld.xyz), 2.0);

    vec4 diffuselyReflectedLight = pointLightOnSurface * max(0.0, dot(normal, pointLightDirection));
    vec4 specularReflectedLight = pointLightOnSurface * pow(max(0.0, dot(normal, bisector)), uSpecularShiness);
    vec4 ambientLight = uAmbientLight * uAmbientLightIntensity;

    gl_FragColor = textureColor * vec4(ambientLight.xyz + diffuselyReflectedLight.xyz + specularReflectedLight.xyz, 1);

    gl_FragColor = textureColor * vec4(ambientLight.xyz + diffuselyReflectedLight.xyz, 1);
    // gl_FragColor = textureColor * (vec4(0,0,0,1));
    // gl_FragColor = textureColor * (pointLightOnSurface);
    // gl_FragColor = vec4(pointLightOnSurface.xyz, 1);
    // gl_FragColor = textureColor * uPointLight * uPointLightIntensity * max(0.0, -dot(normal, pointLightDirection));
    // gl_FragColor = vec4(vNormal.x, vNormal.y, vNormal.z, 1);
    // gl_FragColor = vec4(pointLightDirection.x, pointLightDirection.y, pointLightDirection.z, 1);
    // gl_FragColor = vec4(pointLightDirection.x, pointLightDirection.x, pointLightDirection.x, 1);
    // gl_FragColor = vec4(pointLightDirection.y, pointLightDirection.y, pointLightDirection.y, 1);
    // gl_FragColor = vec4(-pointLightDirection.z, -pointLightDirection.z, -pointLightDirection.z, 1);

    // 检查vPointWorld
    // gl_FragColor = vec4(abs(vPointWorld.x), abs(vPointWorld.x), abs(vPointWorld.x), 1);
    // gl_FragColor = vec4(abs(vPointWorld.y), abs(vPointWorld.y), abs(vPointWorld.y), 1);
    // gl_FragColor = vec4(abs(vPointWorld.z) / 5.0, abs(vPointWorld.z) / 5.0, abs(vPointWorld.z) / 5.0, 1);
    // gl_FragColor = vec4(abs(vPointWorld.x), abs(vPointWorld.y), abs(vPointWorld.z), 1);

    // 检查normal
    // gl_FragColor = vec4(abs(vNormal.x), abs(vNormal.y), abs(vNormal.z), 1);

    // 检查dot(normal, pointLightDirection)
    // float dotND = dot(normal, pointLightDirection);
    // float dotND = max(0.0, dot(normal, pointLightDirection));
    // float dotND = abs(dot(normalize(vec4(0,0,1,1)), normalize(vec4(0,1,0,1)))); // 非0
    // float dotND = dot(normalize(vec3(0,0,1)), normalize(vec3(0,1,0))); // 0
    // float dotND = dot(normalize(vec3(0,0,1)), normal); 
    // gl_FragColor = vec4(abs(vNormal.x), abs(vNormal.y), abs(vNormal.z), 1);
    // gl_FragColor = vec4(dotND, dotND, dotND, 1);
    // gl_FragColor = vec4(0, 0, 0, 1);

    // 检查 uPointLightIntensity / pow(length(uPointLightPosition - vPointWorld.xyz), 2.0)
    // float pointLightIntensity = uPointLightIntensity / pow(length(uPointLightPosition - vPointWorld.xyz), 2.0);
    // float pointLightIntensity = pow(length(uPointLightPosition - vPointWorld.xyz), 2.0) / 100.0;
    // gl_FragColor = vec4(pointLightIntensity, pointLightIntensity, pointLightIntensity, 1);


  }
  `,
  );
