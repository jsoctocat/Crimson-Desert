#pragma once

class Vector2 {
public:
	int x, y;

	Vector2();

	Vector2(int position_x, int position_y);

	const int& GetX() const { return x; }
	const int& GetY() const { return y; }

	float Get2DDistance(Vector2 target);

	bool Equals(Vector2 target);

	~Vector2()
	{

	}
};

class Vector3
{
public:
	float x, y, z;

	Vector3();

	Vector3(float position_x, float position_y, float position_z);

	const float& GetX() const { return x; }
	const float& GetY() const { return y; }
	const float& GetZ() const { return z; }

	float Get3DDistance(Vector3 target);

	bool Equals(Vector3 target);

	~Vector3()
	{

	}
};
