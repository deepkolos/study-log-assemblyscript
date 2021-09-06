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