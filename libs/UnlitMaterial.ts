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
  attribute vec3 a_position;
  attribute vec2 a_texcoord;
  // attribute vec3 a_normal;

  // camera
  uniform mat4 u_projection;
  // uniform mat4 u_camera_pose;
  uniform mat4 u_camera_pose_invert;
  uniform mat4 u_model_pose;

  // fragment shader
  varying vec2 v_texcoord;
  varying vec3 v_normal;

  void main() {
    vec4 p_camera_frame = u_camera_pose_invert * u_model_pose * vec4(a_position, 1);
    vec4 p_near_plane = u_projection * p_camera_frame;

    // v_normal = a_normal;
    v_texcoord = a_texcoord;

    gl_Position = p_near_plane;
  }
  `,
    glsl`
  precision mediump float;
  // light
  uniform vec4 u_ambient_light;
  uniform vec4 u_directional_light;
  uniform vec4 u_point_light;
  uniform vec4 u_point_light_position; // 点光源用位置即可
  uniform mat4 u_directional_light_pose;
  
  // matrial
  uniform sampler2D u_base_color_texture;
  uniform vec3 u_base_color;

  // varying
  varying vec2 v_texcoord;
  varying vec4 v_normal;

  void main() {
    gl_FragColor = texture2D(u_base_color_texture, v_texcoord);
  }
  `,
  );
