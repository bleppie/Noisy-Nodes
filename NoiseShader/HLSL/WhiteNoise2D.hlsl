#include "NoiseUtils.hlsl"

float wnoise(float2 In) {
  return rand2dTo1d(In);
}
