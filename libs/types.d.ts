declare namespace gl {
  export type int = number;
  export type uint = number;
  export type bool = number;
  export type float = number;

  export type vec2 = [number, number];
  export type vec3 = [number, number, number];
  export type vec4 = [number, number, number, number];

  // prettier-ignore
  export type mat2 = [
    number, number,
    number, number,
  ];
  // prettier-ignore
  export type mat3 = [
    number, number, number,
    number, number, number,
    number, number, number,
  ];
  // prettier-ignore
  export type mat4 = [
    number, number, number, number,
    number, number, number, number,
    number, number, number, number,
    number, number, number, number,
  ];

  export type sampler2D = number; // texture uint
}

declare type GLTF = {
  accessors: {
    bufferView: number;
    byteOffset: number;
    componentType: number;
    count: number;
    max: number[];
    min: number[];
    type: string;
    normalized?: boolean;
  }[];
  asset: { generator: string; version: string };
  bufferViews: {
    buffer: number;
    byteLength: number;
    byteOffset: number;
    target: number;
    byteStride?: number;
  }[];
  buffers: { byteLength: number; uri: string; data?: ArrayBuffer }[];
  images: { uri: string; el?: HTMLImageElement }[];
  materials: {
    name: string;
    pbrMetallicRoughness: {
      baseColorTexture: { index: number };
      metallicRoughnessTexture: { index: number };
    };
  }[];
  meshes: {
    name: string;
    primitives: {
      attributes: {
        NORMAL: number;
        POSITION: number;
        TANGENT: number;
        TEXCOORD_0: number;
      };
      indices: number;
      material: number;
      mode: number;
    }[];
  }[];
  nodes: { mesh: number; name: string }[];
  samplers: {}[];
  scene: number;
  scenes: { nodes: number[] }[];
  textures: { sampler: number; source: number }[];
};
