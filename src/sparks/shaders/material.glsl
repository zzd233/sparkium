
#ifndef MATERIAL_GLSL
#define MATERIAL_GLSL

struct Material {
  vec3 albedo_color;
  int albedo_texture_id;
  vec3 emission;
  float emission_strength;
  float dis_scattering;
  float refraction_ratio;
  float dis_absorption;
  float alpha;
  uint material_type;
  float metallization;
  uint medium_type;
  int normal_map_id;
  vec3 absorption_color;
  float normal_map_intensity;
};

#define MEDIUM_TYPE_NONSCATTERING 0
#define MEDIUM_TYPE_ISOTROPICSCATTERING 1

#define MATERIAL_TYPE_LAMBERTIAN 0
#define MATERIAL_TYPE_SPECULAR 1
#define MATERIAL_TYPE_TRANSMISSIVE 2
#define MATERIAL_TYPE_PRINCIPLED 3
#define MATERIAL_TYPE_EMISSION 4
#define MATERIAL_TYPE_SUBSURFACE 5

#endif