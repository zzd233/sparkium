
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
  uint useless_1;
  vec3 absorption_color;
  uint useless_2;
};

#define MEDIUM_TYPE_VACUUM 0
#define MEDIUM_TYPE_NONSCATTERING 1
#define MEDIUM_TYPE_ISOTROPICSCATTERING 2

#define MATERIAL_TYPE_LAMBERTIAN 0
#define MATERIAL_TYPE_SPECULAR 1
#define MATERIAL_TYPE_TRANSMISSIVE 2
#define MATERIAL_TYPE_PRINCIPLED 3
#define MATERIAL_TYPE_EMISSION 4
#define MATERIAL_TYPE_SUBSURFACE 5
