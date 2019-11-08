#include "LocalPlayerContext.h"
#include "..//Utilities/XorString.h"

#include <thread> //multithreading
#include <chrono> //draw fps

LocalPlayer::LocalPlayerContext& LocalPlayer::LocalPlayerContext::GetInstance()
{
	static LocalPlayerContext instanceContext;

	uint64_t& m_ui64_local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t& m_ui64_character_control_address = *((uint64_t*)(m_ui64_local_player_address + g_ki32_CharacterController));
	uint64_t& m_ui64_character_scene_address = *((uint64_t*)(m_ui64_character_control_address + g_ki32_CharacterScene));
	uint64_t& m_ui64_teleport_1 = *((uint64_t*)(m_ui64_character_scene_address + g_ki32_teleport_1));
	uint64_t& m_ui64_teleport_2 = *((uint64_t*)(m_ui64_teleport_1 + g_ki32_teleport_2));
	uint64_t& m_ui64_teleport_3 = *((uint64_t*)(m_ui64_teleport_2 + g_ki32_teleport_3));

	return instanceContext;
}

void LocalPlayer::LocalPlayerContext::Teleportation(const float& x, const float& y, const float& z, const uint16_t& check, const uint16_t& delay)
{
	// delay before teleport because you need to prep the distance so you dont fail the server check, teleport distance is 1 = > 1ms(NOT LESS!)
	if (delay != 0)
		std::this_thread::sleep_for(std::chrono::milliseconds(delay));

	//move y first before x and z
	if (check == 0)
	{
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = y;
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = x;
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) = z;
	}
	else if (check == 1)
	{
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) + (y);
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) + (x);
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) + (z);
	}
	else
	{
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = 80.0f;
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) + (x);
		*((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) + (z);
	}
}