#pragma once
#include "cstdint"
#include "glm/glm.hpp"
#include "sparks/assets/util.h"

namespace sparks {

enum MaterialType : int {
  MATERIAL_TYPE_LAMBERTIAN = 0,
  MATERIAL_TYPE_SPECULAR = 1,
  MATERIAL_TYPE_TRANSMISSIVE = 2,
  MATERIAL_TYPE_PRINCIPLED = 3,
  MATERIAL_TYPE_EMISSION = 4,
  MATERIAL_TYPE_SUBSURFACE = 5
};

enum MediumType : int {
  MEDIUM_TYPE_NONSCATTERING = 0,
  MEDIUM_TYPE_ISOTROPICSCATTERING = 1
};

class Scene;

struct Material {
  glm::vec3 albedo_color{0.8f};
  int albedo_texture_id{0};
  glm::vec3 emission{0.0f};
  float emission_strength{1.0f};
  float dis_scattering{0.1001f};
  float refraction_ratio{1.9f};
  float dis_absorption{0.37};
  float alpha{1.0f};
  MaterialType material_type{MATERIAL_TYPE_LAMBERTIAN};
  float metallization{0.8};
  MediumType medium_type{MEDIUM_TYPE_NONSCATTERING};
  int normal_map_id{-1};
  glm::vec3 absorption_color{glm::vec3(1, 0.9, 0.9)};
  float normal_map_intensity{1.0f};
  Material() = default;
  explicit Material(const glm::vec3 &albedo);
  Material(Scene *scene, const tinyxml2::XMLElement *material_element);
};
}  // namespace sparks
