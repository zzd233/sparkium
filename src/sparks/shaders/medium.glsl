
float MediumSampleDistance(uint medium_type, vec3 coef_scattering, float tFar, inout float pdf, inout int col){
    float dis = tFar;
    pdf = 1e6;
    if(medium_type == MEDIUM_TYPE_ISOTROPICSCATTERING){
        if(col == -1){
            if(RandomFloat() < 0.333333) col = 0;
            else if(RandomFloat() < 0.5) col = 1;
            else col = 2;
        }
        float new_dis = -log(RandomFloat()) / coef_scattering[col];
        if(new_dis < tFar){
            dis = new_dis;
            pdf = exp(- coef_scattering[col] * dis);
        }
    }
    return dis;
}

vec3 SampleScatterDirection(uint medium_type, vec3 dir, inout float pdf){
    if(medium_type == MEDIUM_TYPE_ISOTROPICSCATTERING){
        pdf = 0.25 / 3.1415926535897932384626433832795;
        return RandomOnSphere();
    }
    pdf = 1e6;
    return dir;
}

// float ScatterDirectionPdf(uint medium_type, vec3 coef_absorption, vec3 coef_scattering){
// }

vec3 Transmission(uint medium_type, vec3 coef_absorption, float dis){
    // if(medium_type == MEDIUM_TYPE_VACUUM)
    //     return vec3(1.0, 1.0, 1.0);
    return vec3(exp(- coef_absorption[0] * dis), exp(- coef_absorption[1] * dis), exp(- coef_absorption[2] * dis));
}