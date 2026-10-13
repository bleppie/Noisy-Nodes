#ifndef _NOISY_NODES_WHITE_NOISE3D
#define _NOISY_NODES_WHITE_NOISE3D

#include "NoiseUtils.hlsl"

float wnoise(float3 In) {
  return rand3dTo1d(In);
}

#endif
