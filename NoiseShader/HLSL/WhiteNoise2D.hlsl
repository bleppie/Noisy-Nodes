#ifndef _NOISY_NODES_WHITE_NOISE2D
#define _NOISY_NODES_WHITE_NOISE2D

#include "NoiseUtils.hlsl"

float wnoise(float2 In) {
  return rand2dTo1d(In);
}

#endif
