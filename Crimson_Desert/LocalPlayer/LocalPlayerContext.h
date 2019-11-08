#pragma once
#include <cstdint>
#include <string>
#include "..//Foundation/Addresses.h"
#include "..//Foundation/Offsets.h"

namespace LocalPlayer
{
	class LocalPlayerContext
	{
	public:
		static LocalPlayerContext& GetInstance();
	
	private:
		uint64_t m_ui64_local_player_address;
		uint64_t m_ui64_character_control_address;
		uint64_t m_ui64_character_scene_address;
		uint64_t m_ui64_teleport_1;
		uint64_t m_ui64_teleport_2;
		uint64_t m_ui64_teleport_3;

	public:
		void Teleportation(const float& x, const float& y, const float& z, const uint16_t& check, const uint16_t& delay);
	};
}