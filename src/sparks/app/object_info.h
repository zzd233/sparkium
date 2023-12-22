#pragma once
#include "cstdint"
namespace sparks {
struct ObjectInfo {
  uint32_t vertex_offset;
  uint32_t index_offset;
  uint32_t n_meshes;
  uint32_t reserved;
};
struct LightSourceObjectInfo {
  uint32_t ID;
  uint32_t n_meshes;
};
}  // namespace sparks
