# Unity_MathCginc

``Math.cginc`` includes some defined values and some functions about math.


## Import to Your Project

You can import this asset from UnityPackage.

- [MathCginc.unitypackage](https://github.com/XJINE/Unity_MathCginc/blob/master/MathCginc.unitypackage)


## Defines & Functions

```hlsl
#define MATH_PI          3.1415926
#define MATH_2PI         6.2831852

#define MATH_DEG_TO_RAD  0.0174533
#define MATH_RAD_TO_DEG 57.2957795

#define MATH_RAD_15      0.2617993
#define MATH_RAD_30      0.5235987
#define MATH_RAD_45      0.7853981
#define MATH_RAD_60      1.0471975
#define MATH_RAD_90      1.5707963
#define MATH_RAD_120     2.0943951
#define MATH_RAD_135     2.3561944
#define MATH_RAD_150     2.6179938

#define MATH_HALF        0.5
#define MATH_QUATER      0.25
#define MATH_ONE_THIRD   0.3333333
#define MATH_TWO_THIRD   0.6666666
#define MATH_ONE_SIXTH   0.1666666

float3x3 RotationMatrixAxis(float radian, float3 axis)
float3x3 RotationMatrixX(float radian)
float3x3 RotationMatrixY(float radian)
float3x3 RotationMatrixZ(float radian)
float DegreeToRadian(float degree)
float RadianToDegree(float radian)
float Random(float2 uv)
float Random(float2 uv, int seed)
```
