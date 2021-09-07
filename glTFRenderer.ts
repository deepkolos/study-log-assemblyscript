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

document.body.append(canvas);

loadGLTF('./models/glTF/Cube.gltf').then(gltf => {
  const glTFRenderer = new GLTFWebGLRenderer(gl, gltf);

  // 动起来之后就发现问题了，有一部分像是镂空了一样，还是得使用棋盘纹理看的清楚

  let x = 0;
  const render = () => {
    x += 0.02;
    modelPose.rotate(x, x, x);
    glTFRenderer.render(projection, cameraPoseInvert, modelPose);
    requestAnimationFrame(render);
  };
  render();
});
