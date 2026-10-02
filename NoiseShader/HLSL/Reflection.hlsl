#include "ShaderApiReflectionSupport.hlsl"
#include "ClassicNoise2D.hlsl"
#include "ClassicNoise3D.hlsl"
#include "SimplexNoise2D.hlsl"
#include "SimplexNoise3D.hlsl"
#include "VoronoiNoise2D.hlsl"
#include "VoronoiNoise3D.hlsl"
#include "VoronoiNoise4D.hlsl"
#include "WhiteNoise2D.hlsl"
#include "WhiteNoise3D.hlsl"

namespace NoisyNodes {

// PERLIN

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.PerlinNoise2D</sg:ProviderKey>
///    <sg:DisplayName>Perlin Noise 2D</sg:DisplayName>
///    <sg:SearchName>Perlin Noise 2D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float PerlinNoise2D(float2 In, float2 Frequency) {
  return cnoise(In * Frequency) * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.PerlinNoise2DPeriodic</sg:ProviderKey>
///    <sg:DisplayName>Perlin Noise 2D Periodic</sg:DisplayName>
///    <sg:SearchName>Perlin Noise 2D Periodic</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1</sg:Default></paramhints>
///<paramhints name="Period">
///     <sg:Default>5, 5</sg:Default>
///</paramhints>
UNITY_EXPORT_REFLECTION
float PerlinNoise2DPeriodic(float2 In, float2 Frequency, float2 Period) {
  return pnoise(In * Frequency, Period) * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.PerlinNoise3D</sg:ProviderKey>
///    <sg:DisplayName>Perlin Noise 3D</sg:DisplayName>
///    <sg:SearchName>Perlin Noise 3D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float PerlinNoise3D(float3 In, float3 Frequency) {
  return cnoise(In * Frequency) * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.PerlinNoise3DPeriodic</sg:ProviderKey>
///    <sg:DisplayName>Perlin Noise 3D Periodic</sg:DisplayName>
///    <sg:SearchName>Perlin Noise 3D Periodic</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1, 1</sg:Default></paramhints>
///<paramhints name="Period"><sg:Default>5, 5, 5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float PerlinNoise3DPeriodic(float3 In, float3 Frequency, float3 Period) {
  return pnoise(In * Frequency, Period) * 0.5f + 0.5f;
}


// SIMPLEX

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.SimplexNoise2D</sg:ProviderKey>
///    <sg:DisplayName>Simplex Noise 2D</sg:DisplayName>
///    <sg:SearchName>Simplex Noise 2D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float SimplexNoise2D(float2 In, float2 Frequency) {
  return snoise(In * Frequency) * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.SimplexNoise2DGradient</sg:ProviderKey>
///    <sg:DisplayName>Simplex Noise 2D Gradient</sg:DisplayName>
///    <sg:SearchName>Simplex Noise 2D Gradient</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float SimplexNoise2DGradient(float2 In, float2 Frequency, out float2 Gradient) {
  float3 value = snoise_grad(In * Frequency);
  Gradient = value.xy;
  return value.z * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.SimplexNoise3D</sg:ProviderKey>
///    <sg:DisplayName>Simplex Noise 3D</sg:DisplayName>
///    <sg:SearchName>Simplex Noise 3D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float SimplexNoise3D(float3 In, float3 Frequency) {
  return snoise(In * Frequency) * 0.5f + 0.5f;
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.SimplexNoise3DGradient</sg:ProviderKey>
///    <sg:DisplayName>Simplex Noise 3D Gradient</sg:DisplayName>
///    <sg:SearchName>Simplex Noise 3D Gradient</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="Frequency"><sg:Default>1, 1, 1</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float SimplexNoise3DGradient(float3 In, float3 Frequency, out float3 Gradient) {
  float4 value = snoise_grad(In * Frequency);
  Gradient = value.xyz;
  return value.w * 0.5f + 0.5f;
}


// VORONOI

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise2D</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 2D</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 2D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise2D(float2 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise(In, AngleOffset, CellDensity, Cells);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise2DPrecise</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 2D Precise</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 2D Precise</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise2DPrecise(float2 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise_precise(In, AngleOffset, CellDensity, Cells);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise3D</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 3D</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 3D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise3D(float3 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise(In, AngleOffset, CellDensity, Cells);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise3DPrecise</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 3D Precise</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 3D Precise</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise3DPrecise(float3 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise_precise(In, AngleOffset, CellDensity, Cells);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise4D</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 4D</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 4D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise4D(float4 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise(In, AngleOffset, CellDensity, Cells);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.VoronoiNoise4DPrecise</sg:ProviderKey>
///    <sg:DisplayName>Voronoi Noise 4D Precise</sg:DisplayName>
///    <sg:SearchName>Voronoi Noise 4D Precise</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="AngleOffset"><sg:Default>10</sg:Default></paramhints>
///<paramhints name="CellDensity"><sg:Default>5</sg:Default></paramhints>
UNITY_EXPORT_REFLECTION
float VoronoiNoise4DPrecise(float4 In, float AngleOffset, float CellDensity, out float Cells) {
  return vnoise_precise(In, AngleOffset, CellDensity, Cells);
}


// WHITE

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.WhiteNoise2D</sg:ProviderKey>
///    <sg:DisplayName>White Noise 2D</sg:DisplayName>
///    <sg:SearchName>White Noise 2D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><UV/></paramhints>
UNITY_EXPORT_REFLECTION
float WhiteNoise2D(float2 In) {
  return wnoise(In);
}

///<funchints>
///    <sg:ProviderKey>Noisy-Nodes.WhiteNoise3D</sg:ProviderKey>
///    <sg:DisplayName>White Noise 3D</sg:DisplayName>
///    <sg:SearchName>White Noise 3D</sg:SearchName>
///    <sg:SearchCategory>Noise</sg:SearchCategory>
///</funchints>
///<paramhints name="In"><Position/></paramhints>
UNITY_EXPORT_REFLECTION
float WhiteNoise3D(float3 In) {
  return wnoise(In);
}

} // Namespace
