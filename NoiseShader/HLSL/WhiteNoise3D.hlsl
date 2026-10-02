#include "NoiseUtils.hlsl"

float wnoise(float3 In) {
  return rand3dTo1d(In);
}
