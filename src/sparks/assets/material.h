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
  MATERIAL_TYPE_EMISSION = 4
};

enum MediumType : int {
  MEDIUM_TYPE_VACUUM = 0,
  MEDIUM_TYPE_NONSCATTERING = 1,
  MEDIUM_TYPE_ISOTROPICSCATTERING = 2
};

class Scene;

struct Material {
  glm::vec3 albedo_color{0.8f};
  int albedo_texture_id{0};
  glm::vec3 emission{0.0f};
  float emission_strength{1.0f};
  // glm::vec3 coef_scattering;
  float refraction_ratio{1.5f};
  // glm::vec3 coef_absorption;
  float alpha{1.0f};
  MaterialType material_type{MATERIAL_TYPE_LAMBERTIAN};
  // MediumType medium_type{MEDIUM_TYPE_VACUUM};
  float reserve[1]{};
  Material() = default;
  explicit Material(const glm::vec3 &albedo);
  Material(Scene *scene, const tinyxml2::XMLElement *material_element);
};
}  // namespace sparks
