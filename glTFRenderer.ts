import { GLTFWebGLRenderer } from './libs/glTFRenderer';
import { loadGLTF } from './libs/Loader';
import { Matrix4 } from './libs/Math';

function perspective(
  fieldOfViewInRadians: number,
  aspect: number,
  near: number,
  far: number,
) {
  var f = Math.tan(Math.PI * 0.5 - 0.5 * fieldOfViewInRadians);
  var rangeInv = 1.0 / (near - far);

  // prettier-ignore
  return new Matrix4().set( 
    f / aspect, 0, 0, 0,
    0, f, 0, 0,
    0, 0, (near + far) * rangeInv, near * far * rangeInv * 2,
    0, 0, -1, 0)
}

const fps = document.createElement('div');
const canvas = document.createElement('canvas');
const gl = canvas.getContext('webgl') as WebGLRenderingContext;
const projection = perspective(
  Math.PI / 3,
  // canvas.width / canvas.height,
  1,
  1,
  100,
);
const cameraPoseInvert = new Matrix4().identity().invert();
const modelPose = new Matrix4()
  .identity()
  .translate(0, 0, -5)
  .rotate(Math.PI / 3, 0, 0);

canvas.width = 400 * devicePixelRatio;
canvas.height = 400 * devicePixelRatio;
canvas.style.width = '400px';
canvas.style.height = '400px';
gl.viewport(0, 0, canvas.width, canvas.height);

document.body.append(canvas, fps);

loadGLTF('./models/glTF/Cube.gltf').then(gltf => {
  const glTFRenderer = new GLTFWebGLRenderer(gl, gltf);
  gl.enable(gl.DEPTH_TEST); // 开启深度测试后方块就正常了，但是还有纹理采样问题
  // 动起来之后就发现问题了，有一部分像是镂空了一样，还是得使用棋盘纹理看的清楚
  // 这里的renderer并没有集成gl全局状态设置，需要继续把流程理解清楚些
  const uAmbientLight: gl.vec4 = [1, 1, 1, 1];
  const uAmbientLightIntensity = 0.5;

  const uPointLight: gl.vec4 = [1, 1, 1, 1];
  const uPointLightPosition: gl.vec3 = [0, 0, 0];
  const uPointLightIntensity = 12;

  const uDirectionalLight: gl.vec4 = [1, 1, 1, 1];
  const uDirectionalLightPose: gl.mat4 = new Matrix4();
  const uDirectionalLightIntensity = 0;

  const uSpecularShiness = 30;

  let x = 0;
  let t = 0;
  const render = () => {
    x += 0.01;
    // modelPose.rotate(x, x, x);
    modelPose.rotate(x, 0, 0);
    // modelPose.rotate(0, x, 0);
    // modelPose.rotate(0, 0, x);
    t = performance.now();
    glTFRenderer.render(projection, cameraPoseInvert, modelPose, {
      uAmbientLight,
      uAmbientLightIntensity,
      uPointLight,
      uPointLightPosition,
      uPointLightIntensity,
      uDirectionalLight,
      uDirectionalLightPose,
      uDirectionalLightIntensity,
      uSpecularShiness,
    });

    t = performance.now() - t;
    fps.innerText = t.toFixed(2);
    requestAnimationFrame(render);
  };
  render();
});
