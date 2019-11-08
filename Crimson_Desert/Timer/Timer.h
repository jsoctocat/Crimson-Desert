#pragma once
#include <cstdint>
#include <chrono>

//only usable once per scope
inline bool TimerFunction(const int64_t& delay)
{
	uint8_t check = 0;
	static bool passed;
	static std::chrono::steady_clock::time_point last;
	if (!passed)
	{
		last = std::chrono::high_resolution_clock::now();
		passed = true;
	}
	auto now = std::chrono::high_resolution_clock::now();

	if (std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count() >= delay)
	{
		//cLog("%d", std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count());

		++check;
		passed = false;
	}

	return check > 0;
}