#ifndef VERTEX_GLSL
#define VERTEX_GLSL

struct Vertex {
  vec3 position;
  vec3 normal;
  vec3 tangent;
  vec2 tex_coord;
  float signal;
};

Vertex GetVertex(uint index) {
  uint offset = index * 12;
  Vertex vertex;
  vertex.position =
      vec3(vertices[offset + 0], vertices[offset + 1], vertices[offset + 2]);
  vertex.normal =
      vec3(vertices[offset + 3], vertices[offset + 4], vertices[offset + 5]);
  vertex.tangent =
      vec3(vertices[offset + 6], vertices[offset + 7], vertices[offset + 8]);
  vertex.tex_coord = vec2(vertices[offset + 9], vertices[offset + 10]);
  vertex.signal = vertices[offset + 11];
  return vertex;
}

#endif
