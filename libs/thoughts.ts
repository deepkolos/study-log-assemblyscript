/**
 * 感觉和THREE差不多
 *
 * 坐标系 Frame（Point点，Vector向量，Frame坐标）子节点位于什么坐标系下，貌似也能理解
 * 相机 Camera
 * 材质 Matrial
 * 几何 Geometry
 * 光照 Light
 * 网格 Mesh
 * 场景图 GLTF
 *    （不过这里直接使用gltf的数据结构作为场景图, 不过貌似不太行的样子，只要有中间层抽象，就必然会有数据结构的转换
 *    （感觉如果定位是gltf renderer的话，gltf就是通用的数据结构了，如果是这一层的话，只需要抽象WebGL API即可
 *    （如果没有类似THREE这一层抽象，其实只是意味着gltf的数据直接解析为gl的数据 glTF > GLTFLoader > Scene > Renderer 变成 glTF > Renderer
 *    （反正WebGL层是需要抽象的，先想想这部分内容；光照，相机，还是得抽象
 */

class Matrix {}
class Vector {}
class Euler {}
class Quaternion {}
class Frame {}

class Camera extends Frame {}
class PerspectiveCamera extends Camera {}

class Light extends Frame {}
class DirectinalLight extends Light {}
class AmbientLight extends Light {}

// class Geometry {}
// class Material {}
// class UnlitMaterial extends Material {}
// class Mesh extends Frame {}

// // 因为WebGPU快到正式版浏览器了，所以也尝试设计下简单的多个renderer支持（感觉和three的抽象是一样的
// class WebGL1Renderer {}
// class WebGPURenderer {}

// WebGL的资源如何管理？单独还是集成在render呢，既然是webglRenderer那么就是gltf和webgl的关联绑定，直接挂上面也没有啥问题
// 要么就直接从shader的概念开始抽象，如果加上类似three的中间层就非常多概念了
// GLTF/FBX/GBJ -> THREE Scene Graph -> Edit Scene Graph -> render SceneGraph
// FBX/OBJ -> GLTF -> render GLTF 只是相对比较难编辑这个GLTF内的东西，不过可以外挂
// 只是相当于解析GLTF的逻辑和渲染并在一起了，GLTF目前索引表的数据格式好处应该是方便资源复用？
// 如果是这样需要抽象的也只有webgl program需要方便设置了
// 想拥有类似tfjs-webgl-backend的webgl debug信息打日志，但是又不希望在prod build存在

/**
 * geometry -> vec3 attribute
 * material -> texture uniform
 * light -> vec4 mat4 uniform
 * camera -> mat4 uniform
 */
