#ifndef MATH_INCLUDED
#define MATH_INCLUDED

#define MATH_PI          3.1415926
#define MATH_DEG_TO_RAD  0.0174533
#define MATH_RAD_TO_DEG 57.2957795

#define MATH_HALF        0.5
#define MATH_QUATER      0.25
#define MATH_ONE_THIRD   0.3333333
#define MATH_TWO_THIRD   0.6666666
#define MATH_ONE_SIXTH   0.1666666

float3x3 RotationMatrixAxis(float radian, float3 axis)
{
    float _sin, _cos;
    sincos(radian, _sin, _cos);

    float t = 1 - _cos;
    float x = axis.x;
    float y = axis.y;
    float z = axis.z;

    return float3x3(t * x * x + _cos,      t * x * y - _sin * z,  t * x * z + _sin * y,
                    t * x * y + _sin * z,  t * y * y + _cos,      t * y * z - _sin * x,
                    t * x * z - _sin * y,  t * y * z + _sin * x,  t * z * z + _cos);
}

float3x3 RotationMatrixX(float radian)
{
    float _sin, _cos;
    sincos(radian, _sin, _cos);

    return float3x3(1,    0,     0,
                    0, _cos, -_sin,
                    0, _sin,  _cos);
}

float3x3 RotationMatrixY(float radian)
{
    float _sin, _cos;
    sincos(radian, _sin, _cos);

    return float3x3(_cos, 0, -_sin,
                       0, 1,     0,
                    _sin, 0,  _cos);
}

float3x3 RotationMatrixZ(float radian)
{
    float _sin, _cos;
    sincos(radian, _sin, _cos);

    return float3x3(_cos, -_sin,  0,
                    _sin,  _cos,  0,
                       0,     0,  1);
}

float DegreeToRadian(float degree)
{
    return degree * MATH_DEG_TO_RAD;
}

float RadianToDegree(float radian)
{
    return radian * MATH_RAD_TO_DEG;
}

float Random(float2 coordinate, int Seed)
{
    return frac(sin(dot(coordinate.xy, float2(12.9898, 78.233)) + Seed) * 43758.5453);
}

#endif // MATH_INCLUDED