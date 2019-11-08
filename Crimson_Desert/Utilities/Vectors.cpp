#include "Vectors.h"
#include <cmath>

//Vector 2
Vector2::Vector2()
{
	x = 0;
	y = 0;
}

Vector2::Vector2(float position_x, float position_y)
{
	x = position_x;
	y = position_y;
}

float Vector2::Get2DDistance(Vector2 target)
{
	float xD = x - target.x;
	float yD = y - target.y;

	return sqrt(xD * xD + yD * yD);
}

bool Vector2::Equals(Vector2 target)
{
	if (x == target.x && y == target.y)
		return true;

	return false;
}

//Vector 3
Vector3::Vector3()
{
	x = 0;
	y = 0;
	z = 0;
}

Vector3::Vector3(float position_x, float position_y, float position_z)
{
	x = position_x;
	y = position_y;
	z = position_z;
}

float Vector3::Get3DDistance(Vector3 target)
{
	float position_x = x - target.x;
	float position_y = y - target.y;
	float position_z = z - target.z;

	return (float)sqrt(position_x * position_x + position_y * position_y + position_z * position_z);
}

bool Vector3::Equals(Vector3 target)
{
	if (x == target.x && y == target.y && z == target.z)
		return true;

	return false;
}
