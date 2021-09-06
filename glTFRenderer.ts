import { Matrix4 } from './libs/Math';
import { unlitMaterialProgram } from './libs/UnlitMaterial';
import GLTFFile from './models/glTF/Cube.json';

type GLTF = typeof GLTFFile;

const WEBGL_COMPONENT_TYPES = {
  5120: Int8Array,
  5121: Uint8Array,
  5122: Int16Array,
  5123: Uint16Array,
  5125: Uint32Array,
  5126: Float32Array,
};

const WEBGL_TYPE_SIZES = {
  SCALAR: 1,
  VEC2: 2,
  VEC3: 3,
  VEC4: 4,
  MAT2: 4,
  MAT3: 9,
  MAT4: 16,
};

function perspective(
  fieldOfViewInRadians: number,
  aspect: number,
  near: number,
  far: number,
) {
  var f = Math.tan(Math.PI * 0.5 - 0.5 * fieldOfViewInRadians);
  var rangeInv = 1.0 / (near - far);

  // prettier-ignore
  return Matrix4.from([
    f / aspect, 0, 0, 0,
    0, f, 0, 0,
    0, 0, (near + far) * rangeInv, -1,
    0, 0, near * far * rangeInv * 2, 0
  ])
}

class GLTFWebGLRenderer {
  constructor(gl: WebGLRenderingContext) {
    unlitMaterialProgram.compile(gl);
  }

  render(
    gltf: GLTF,
    projection: Matrix4,
    cameraPoseInvert: Matrix4,
    modelPose: Matrix4,
  ) {
    const sceneDef = gltf.scenes[gltf.scene];

    // 相比与之前漏了模型内的坐标系的变换，而方便实现应该使用深度遍历
    for (let i = 0, il = sceneDef.nodes.length; i < il; i++) {
      const nodeIndex = sceneDef.nodes[i];
      const nodeDef = gltf.nodes[nodeIndex];
      const meshIndex = nodeDef.mesh;

      if (meshIndex === undefined) continue;

      const meshDef = gltf.meshes[meshIndex];
      unlitMaterialProgram.setUnifrom('uCameraPoseInvert', cameraPoseInvert);
      unlitMaterialProgram.setUnifrom('uProjection', projection);
      unlitMaterialProgram.setUnifrom('uModelPose', modelPose);

      for (let j = 0, jl = meshDef.primitives.length; j < jl; j++) {
        const primitiveDef = meshDef.primitives[j];
        // 生成attribute
      }
    }
  }
}
