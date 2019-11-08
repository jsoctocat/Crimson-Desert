#pragma once
#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
//Here we define some macros that stop `Windows.h` from doing some things we don't want. The former stops it from including some stuff we don't need (explained here), the latter stops it from defining the `min` and `max` macros, as we already have these in the STL and the macros can mess with your code, so we just get rid of them.
#include <windows.h> //Here we include the Win32 API headers.
#undef WIN32_LEAN_AND_MEAN
#undef NOMINMAX

#include <cstdint>
#include "Foundation/Addresses.h"
#include "Foundation/Offsets.h"

class ESP
{
public:
	static ESP& GetInstance();
private:
	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	HWND hWindow = FindWindowA("BlackDesertWindowClass", NULL); //find window class name
	RECT rect;
	float screenWidth, screenHeight, readViewMatrix[4][4];
	float oriPos0, oriPos1, desPos0, desPos1;
	float oriScreen[2], desScreen[2];
public:
	ESP()
	{
		GetClientRect(hWindow, &rect);
		screenWidth = (float)(rect.right - rect.left);
		screenHeight = (float)(rect.bottom - rect.top);
	}
	void DrawESP();
	void DrawOnWorldMap();
	void DrawWayPoints();
};