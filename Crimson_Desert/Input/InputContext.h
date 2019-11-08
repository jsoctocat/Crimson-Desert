#pragma once
#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
//Here we define some macros that stop `Windows.h` from doing some things we don't want. The former stops it from including some stuff we don't need (explained here), the latter stops it from defining the `min` and `max` macros, as we already have these in the STL and the macros can mess with your code, so we just get rid of them.
#include <windows.h> //Here we include the Win32 API headers.
#undef WIN32_LEAN_AND_MEAN
#undef NOMINMAX

namespace Input
{
	class InputContext
	{
	public:
		static InputContext& GetInstance();
	public:
		bool OnWindowMessage(const MSG* lpMsg);
		bool CursorIsVisible() const { return GetCursor() != nullptr; }
	};
}