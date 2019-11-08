#pragma warning(disable: 4244) // float to int, possible loss of data
#pragma warning(disable: 4267) // size_t to const int, possible loss of data

#include "ImGui/imgui.h"
#include "ImGui/imgui_impl_dx11.h"
#include "ImGui/imgui_internal.h" //draw line and stuff, math operator

#include <vector>
#include <cmath>
#include <thread> //multithreading
#include <chrono> //draw fps
#include <sstream>
#include <unordered_map>

#include <algorithm>
#include <random>

#include "Foundation/Addresses.h"
#include "Foundation/Offsets.h"
#include "Foundation/FunctionCalls.h"
#include "Foundation/GlobalVariables.h"
#include "./Utilities/String.h"

#include "./LocalPlayer/LocalPlayerContext.h"
#include "Unhook.h"
#include "./ESP/ESP.h"
#include "./Timer/Timer.h"
#include "Utilities/XorString.h"
#include "Utilities/Lua.h"
#include "Utilities/Dump_Functions.h"

#include "Utilities/Vectors.h"

#include "intrin.h" //check if multithreading

#include <filesystem>
namespace fs = std::filesystem;

class ActorListManager
{
public:
	uint64_t m_ui64_address;

	ActorListManager(uint64_t address)
		: m_ui64_address(address) {}
};
class ActorListESP
{
public:
	std::string m_s_name;
	uint16_t m_ui16_id;
	uint8_t m_ui8_level;
	float m_f_position_x, m_f_position_y, m_f_position_z;
	uint32_t m_i32_distance;

	ActorListESP(std::string name, uint16_t id, uint8_t level, float x, float y, float z, uint32_t distance)
		: m_s_name(name), m_ui16_id(id), m_ui8_level(level), m_f_position_x(x), m_f_position_y(y), m_f_position_z(z), m_i32_distance(distance) {}
};

class Manufacture
{
public:
	std::string itemName, procType_wn;
	uint8_t procType_w;
	uint16_t itemId;

	Manufacture(std::string a, std::string b, uint8_t c, uint16_t d)
		: itemName(a), procType_wn(b), procType_w(c), itemId(d) {}
};
std::vector<Manufacture>g_v_manufacture_file;

class Grinder
{
public:
	float m_f_x, m_f_y, m_f_z;
	uint16_t m_ui16_type, m_ui16_delay;

	Grinder(float x, float y, float z, uint16_t type, uint16_t delay)
		: m_f_x(x), m_f_y(y), m_f_z(z), m_ui16_type(type), m_ui16_delay(delay) {}
};
std::vector<Grinder>g_v_waypoints_file;

std::unordered_map<std::string, uint32_t> g_um_esp_actor_id;

#pragma region modules
//format log window timer for marketplace
std::string get_formatted_datetime()
{
	std::time_t raw_time;
	std::tm time;
	char time_buffer[20] = { 0 };

	std::time(&raw_time);
	localtime_s(&time, &raw_time);
	std::strftime(time_buffer, sizeof(time_buffer), XorStringA("%m.%d.%Y %H:%M:%S"), &time);

	return std::string(::_strdup(time_buffer));
}
//draw stuff
inline void rDrawLine(const Vector2& from, const Vector2& to, const uint32_t& color, const float& thickness)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	window->DrawList->AddLine(ImVec2(from.x, from.y), ImVec2(to.x, to.y), ImGui::GetColorU32(color), thickness);
}

inline void rDrawCircle(const Vector2& position, const float& radius, const uint32_t& color, const float& thickness, const bool& filled)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	if (!filled)
		window->DrawList->AddCircle(ImVec2(position.x, position.y), radius, ImGui::GetColorU32(color), 12, thickness);
	else
		window->DrawList->AddCircleFilled(ImVec2(position.x, position.y), radius, ImGui::GetColorU32(color), 12);
}

inline float rDrawText(const ImFont* pFont, const std::string& text, const ImVec2& pos, const float& size, const uint32_t& color, const bool& center)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	float a = (color >> 24) & 0xff;

	std::stringstream steam(text);
	std::string line;

	float y = 0.0f;
	int i = 0;

	while (std::getline(steam, line))
	{
		ImVec2 textSize = pFont->CalcTextSizeA(size, FLT_MAX, 0.0f, line.c_str());

		if (center)
		{
			window->DrawList->AddText(pFont, size, ImVec2(pos.x - textSize.x / 2.0f, pos.y + textSize.y * i), ImGui::GetColorU32(color), line.c_str());
		}
		else
		{
			//add the following to draw bold text (performance cost)
			//window->DrawList->AddText(pFont, size, ImVec2((pos.x) + 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			//window->DrawList->AddText(pFont, size, ImVec2((pos.x) - 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			//window->DrawList->AddText(pFont, size, ImVec2((pos.x) + 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			//window->DrawList->AddText(pFont, size, ImVec2((pos.x) - 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());

			window->DrawList->AddText(pFont, size, ImVec2(pos.x, pos.y + textSize.y * i), ImGui::GetColorU32(color), line.c_str());
		}

		y = pos.y + textSize.y * (i + 1);
		i++;
	}

	return y;
}

inline void rDrawSquare(const Vector2& center, const float& size, const uint32_t& color, const float& thickness, const bool& filled)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	ImVec2* pts = new ImVec2[4];

	pts[0] = ImVec2(center.x - (size / 2), center.y + (size / 2));
	pts[1] = ImVec2(center.x - (size / 2), center.y - (size / 2));
	pts[2] = ImVec2(center.x + (size / 2), center.y - (size / 2));
	pts[3] = ImVec2(center.x + (size / 2), center.y + (size / 2));

	if (!filled)
		window->DrawList->AddPolyline(pts, 4, ImGui::GetColorU32(color), true, thickness);
	else
		window->DrawList->AddConvexPolyFilled(pts, 4, ImGui::GetColorU32(color));

	delete[] pts;
}

inline void rDrawWorldCircle(const std::vector<Vector2>& pts, const float& radius, const uint32_t& color, const float& thickness, const bool& filled)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	ImVec2* new_pts = new ImVec2[pts.size()];

	for (int i = 0; i < pts.size(); i++)
	{
		new_pts[i] = ImVec2(pts[i].x, pts[i].y);
	}

	if (!filled)
		window->DrawList->AddPolyline(new_pts, pts.size(), ImGui::GetColorU32(color), true, thickness);
	else
		window->DrawList->AddConvexPolyFilled(new_pts, pts.size(), ImGui::GetColorU32(color));

	delete[] new_pts;
}

inline void rDrawWorldSquare(const std::vector<Vector2>& pts, const float& size, const uint32_t& color, const float& thickness, const bool& filled)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	ImVec2* new_pts = new ImVec2[pts.size()];

	for (int i = 0; i < pts.size(); i++)
	{
		new_pts[i] = ImVec2(pts[i].x, pts[i].y);
	}

	if (!filled)
		window->DrawList->AddPolyline(new_pts, pts.size(), ImGui::GetColorU32(color), true, thickness);
	else
		window->DrawList->AddConvexPolyFilled(new_pts, pts.size(), ImGui::GetColorU32(color));

	delete[] new_pts;
}

inline void rDrawWorldBox(const std::vector<Vector2>& pts, const float& size, const uint32_t& color, const float& thickness, const float& height)
{
	rDrawLine(pts[0], pts[1], color, thickness);
	rDrawLine(pts[1], pts[2], color, thickness);
	rDrawLine(pts[2], pts[3], color, thickness);
	rDrawLine(pts[3], pts[0], color, thickness);

	rDrawLine(pts[4], pts[5], color, thickness);
	rDrawLine(pts[5], pts[6], color, thickness);
	rDrawLine(pts[6], pts[7], color, thickness);
	rDrawLine(pts[7], pts[4], color, thickness);

	rDrawLine(pts[4], pts[0], color, thickness);
	rDrawLine(pts[5], pts[1], color, thickness);
	rDrawLine(pts[6], pts[2], color, thickness);
	rDrawLine(pts[7], pts[3], color, thickness);
}
#pragma endregion

void InputEvents(const bool& activate, const uint8_t& Vkey_Code1, const uint8_t& Vkey_Code2, const uint8_t& Vkey_Code3)
{
	uint64_t& m_ui64_inputListenerAddress = *((uint64_t*)(*((uint64_t*)(g_kuip_Base)) + 0x08));

	if (activate)
	{
		*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code1 * 4))) = 3;
		if (Vkey_Code2 != 0)
			* ((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code2 * 4))) = 2;
		if (Vkey_Code3 != 0)
			* ((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code3 * 4))) = 1;
	}
	if (TimerFunction(10))
	{
		*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code1 * 4))) = 0;
		if (Vkey_Code2 != 0)
			* ((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code2 * 4))) = 0;
		if (Vkey_Code3 != 0)
			* ((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code3 * 4))) = 0;
	}
}
void PatchNavigation()
{
	uint64_t& RegionList_FirstEntry = *((uint64_t*)(g_kuip_RegionInfoManager + 0x10));
	uint64_t& RegionList_ListStart = *((uint64_t*)(g_kuip_RegionInfoManager + 0x20));
	uint64_t& RegionList_ListEnd = *((uint64_t*)(g_kuip_RegionInfoManager + 0x28));

	uint32_t maxSize = ((RegionList_ListEnd - RegionList_ListStart) / 0x08); //maxsize(count in reclass) is 864 as of 1187

	uint64_t& firstNode = RegionList_FirstEntry;
	uint64_t curNode = firstNode;

	std::vector<uint64_t> l_v_region_info;
	l_v_region_info.reserve(maxSize);

	for (uint32_t count = 0; count < maxSize; count++)
	{
		uint64_t NextNodePtr = *((uint64_t*)(curNode));
		uint64_t PreviousNodePtr = *((uint64_t*)(NextNodePtr + 0x08));
		//cLog("printing %d: %x, %x, %x", count, curNode, NextNodePtr, PreviousNodePtr);

		if (PreviousNodePtr == curNode && NextNodePtr != firstNode)
		{
			uint64_t& RegionDataPtr = *((uint64_t*)(curNode + 0x18));
			l_v_region_info.emplace_back(RegionDataPtr);
			//cLog("printing %d: %x, %x", count, RegionDataPtr, regionInfo[count].address);

			curNode = NextNodePtr;
			//cLog("printing %d: %x, %x", count, curNode, NextNodePtr);
		}
		else { break; }
	}
	//RegionData.cs + Navigation.cs
	for (int count = 1; count < l_v_region_info.size(); count++)
	{
		uint64_t& addressplaceholder = l_v_region_info[count];
		//cLog("printing %d: %x, %x", count, addressplaceholder, regionInfo[count].address);
		//fLog("printing %d: passed", addressplaceholder);
		uint8_t& isDesert = *((uint8_t*)(addressplaceholder + g_ki32_IsDesert));
		if (isDesert)
		{
			//cLog("isDesert trigger at %d", count);
			isDesert = 0;
		}
		uint8_t& isOcean = *((uint8_t*)(addressplaceholder + g_ki32_IsOcean));
		if (isOcean)
		{
			//cLog("isOcean trigger at %d", count);
			isOcean = 0;
		}

		//Always in battle arena (premium character out of bound fix)
		//uint8_t& isBattleArena = *((uint8_t*)(addressplaceholder + g_ki32_RegionType));
		//if (isBattleArena != 6)
		//{
		//	//cLog("isBattleArena trigger at %d", count);
		//	isBattleArena = 6;
		//}

		//uint8_t& isAccessableArea = *((uint8_t*)(addressplaceholder + g_ki32_IsAccessableArea));
		//if (!isAccessableArea)
		//{
		//	//cLog("isAccessableArea trigger at %d", count);
		//	isAccessableArea = 1;
		//}
	}
}

class Entity
{
	uint64_t& m_ui64_local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t& m_ui64_character_control_address = *((uint64_t*)(m_ui64_local_player_address + g_ki32_CharacterController));
	uint64_t& m_ui64_character_scene_address = *((uint64_t*)(m_ui64_character_control_address + g_ki32_CharacterScene));
	uint64_t& m_ui64_teleport_1 = *((uint64_t*)(m_ui64_character_scene_address + g_ki32_teleport_1));
	uint64_t& m_ui64_teleport_2 = *((uint64_t*)(m_ui64_teleport_1 + g_ki32_teleport_2));
	uint64_t& m_ui64_teleport_3 = *((uint64_t*)(m_ui64_teleport_2 + g_ki32_teleport_3));
	uint32_t& m_ui32_current_mainhand = *((uint32_t*)(m_ui64_local_player_address + g_ki32_EquipmentStart));
	uint16_t& m_ui16_current_mainhand_durability = *((uint16_t*)(m_ui64_local_player_address + g_ki32_MaindHandDurab));
	uint8_t& m_ui8_free_inventory_slots = *((uint8_t*)(m_ui64_local_player_address + g_ki32_FreeInventorySlots));
	uint8_t& m_ui8_maxinventory_slots = *((uint8_t*)(m_ui64_local_player_address + g_ki32_MaxInventorySlots));
	uint8_t& m_ui8_fish_grade = *((uint8_t*)(m_ui64_local_player_address + g_ki32_FishGrade));
	uint8_t& m_ui8_is_fishing = *((uint8_t*)(m_ui64_local_player_address + g_ki32_IsFishing)); //very buggy, switched over to fetch/check animation names
	uint16_t m_i16_fishing_equipments[22] = { /*fishing rods ->*/17669, 17596, 16152, 17613, 17612, 17592, 17591, 16153, 16162, 16164, 16163, 16166, 16165, 16151, 16147, 16141, 16150, 16441, /*harpoon ->*/16154, 16155, 16478, 29229 };

public:
	Entity()
	{

	}
	bool AnimationCheck(int check, std::string name)
	{
		bool passed_check = false;
		uint64_t& currentAnimationPtr = *((uint64_t*)(m_ui64_character_control_address + 0x38));
		uint64_t& currentAnimation = *((uint64_t*)(currentAnimationPtr + 0x20));
		uint32_t& animationId = *((uint32_t*)(currentAnimation));

		uint64_t& stringTable_address = *((uint64_t*)(g_kuip_StringTable_ASCII));
		uint64_t& stringTable = *((uint64_t*)(stringTable_address));

		uint64_t NameEntryAddy = (stringTable + (0x10 * animationId));
		std::string animationName((char*)(*((uint64_t*)(NameEntryAddy))));

		switch (check)
		{
		case 0: //general checking
			if (animationName.find(XorStringA("Skill")) != std::string::npos || animationName.find(XorStringA("skill")) != std::string::npos
				|| animationName.find(XorStringA("ATTACK")) != std::string::npos || animationName.find(XorStringA("Attack")) != std::string::npos
				|| animationName.find(XorStringA("Casting")) != std::string::npos //|| animationName.find("Lute") != std::string::npos //for shai
				//|| animationName.find(XorStringA("DarkBurster")) != std::string::npos || animationName.find(XorStringA("EvilForces")) != std::string::npos //for sorc
				|| animationName.find(XorStringA("RIFLE")) != std::string::npos || animationName.find(XorStringA("ITEM_PICK")) != std::string::npos
				|| (animationName.find(XorStringA("FISHING")) != std::string::npos && animationName != XorStringA("FISHING_WAIT") && animationName != XorStringA("FISHING_HOOK_SUCCESS"))  /*check if contains fishing but exclude waiting and success*/
				|| (animationName.find(XorStringA("HARPOON")) != std::string::npos && animationName != XorStringA("HARPOON_AIM_WAIT") && animationName != XorStringA("HARPOON_AIM_MINIGAME_SUCCESS"))) /*check if contains fishing but exclude waiting and success*/
				passed_check = true;
			break;
		case 1: //fishing
			if (animationName == XorStringA("WAIT") || animationName == XorStringA("WAIT2")
				|| animationName == XorStringA("FISHING_HOOK_READY") || animationName == XorStringA("FISHING_HOOK_ING")
				|| animationName == XorStringA("HARPOON_AIM_MINIGAME_START"))
				passed_check = true;
			break;
		case 2: //general waiting check
			if (animationName == XorStringA("WAIT") || animationName == XorStringA("WAIT2"))
				passed_check = true;
			break;
		case 3:
			if (animationName.find(name) != std::string::npos)
				passed_check = true;
			break;
		case 4:
			if (animationName == name)
				passed_check = true;
			break;
		}

		//Log("printing: %d, %x, %s", animationId, NameEntryAddy, animationName.c_str());
		//Log("printing: %d", passed_check);
		return passed_check;
	}
	//if check == 0 then direct teleport, if check is == 1 then current location +/- xyz, else if check >= 2 then current location +/- xy but y will be locked at 80.00f
	void Teleportation(const float& x, const float& y, const float& z, const uint16_t& check, const uint16_t& delay)
	{
		//delay before teleport because you need to prep the distance so you dont fail the server check, teleport distance is 1 => 1ms (NOT LESS!)
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
	void MoveTo(const float& to_x, const float& to_y, const float& to_z)
	{
		//grab current location
		uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
		float& current_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
		float& current_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
		float& current_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

		//movement functions
		bool& activated = *((bool*)(local_player_address + g_ki32_MovementControl));
		float& destination_position_x = *((float*)(local_player_address + g_ki32_MovementDestinationX));
		float& destination_position_y = *((float*)(local_player_address + g_ki32_MovementDestinationY));
		float& destination_position_z = *((float*)(local_player_address + g_ki32_MovementDestinationZ));
		float& origin_position_x = *((float*)(local_player_address + g_ki32_MovementOriginX));
		float& origin_position_y = *((float*)(local_player_address + g_ki32_MovementOriginY));
		float& origin_position_z = *((float*)(local_player_address + g_ki32_MovementOriginZ));

		//move to location
		activated = true;
		destination_position_x = to_x;
		destination_position_y = to_y;
		destination_position_z = to_z;
		origin_position_x = current_position_x;
		origin_position_y = current_position_y;
		origin_position_z = current_position_z;
	}

	bool SwitchRod()
	{
		//fetch inventory information
		std::vector<InvenPipe>inventoryInfo;
		int8_t maxInventorySlots = DumpInventory(2, &inventoryInfo);

		std::string queue_up_lua_code;

		//get rods
		std::vector<uint8_t> l_v_rod_slot;
		l_v_rod_slot.reserve(maxInventorySlots);
		int rodsLeft = 0;
		for (uint8_t x = 2; x < maxInventorySlots; x++) //trash bad rods, inventory starts at 2
		{
			for (int y = 0; y < sizeof(m_i16_fishing_equipments); y++)
			{
				if (inventoryInfo[x].m_ui16_item_id == m_i16_fishing_equipments[y] && inventoryInfo[x].m_ui16_current_durability > 0)
				{
					l_v_rod_slot.emplace_back(inventoryInfo[x].m_ui8_slot);
					rodsLeft++;
				}
				else if (inventoryInfo[x].m_ui16_item_id == m_i16_fishing_equipments[y] && inventoryInfo[x].m_ui16_current_durability == 0)
				{
					std::string slot = std::to_string(inventoryInfo[x].m_ui8_slot - 1);
					queue_up_lua_code += XorStringA("Inventory_DeleteItem(") + slot + ')';
				}
			}
		}
		std::unordered_map<std::string, uint32_t> filterItems;
		std::string endReading = XorStringA("<end>");
		std::string itemName;
		int filteritemId;
		int filterdupCheck = 0;
		std::ifstream filterfin;
		filterfin.open(GetDirectoryFile(XorStringA("FilterItems.ini")), std::ifstream::in);
		while (filterfin.good())
		{
			std::getline(filterfin, itemName, ',');
			if (itemName.find(endReading) != std::string::npos)
				break;
			filterfin >> filteritemId;
			filterfin.ignore(1); //ignore newline
			if (filterdupCheck == filteritemId)
				break;
			filterItems.emplace(itemName, filteritemId);
			//fLog("counter %d", filteritemId);
			filterdupCheck = filteritemId;
		}
		filterfin.close();

		//trash garbage items
		for (int x = 2; x < maxInventorySlots; x++)
		{
			for (auto& target : filterItems)
			{
				if (inventoryInfo[x].m_ui16_item_id == target.second)
				{
					std::string slot = std::to_string(inventoryInfo[x].m_ui8_slot);
					queue_up_lua_code += XorStringA("Inventory_DeleteItem(") + slot + XorStringA(")");
				}
			}
		}

		if (!queue_up_lua_code.empty())
			LuaExecutor(queue_up_lua_code.c_str());

		//return true if no more rods left in inventory
		if (rodsLeft == 0)
		{
			//cLog("no more rods in inventory");
			return true;
		}
		else
		{
			//cLog("rodsleft more than 1");
			LuaExecutor(XorStringA("inventoryUseItem(CppEnums.ItemWhereType.eInventory, ") + std::to_string(l_v_rod_slot[0]) + XorStringA(", 0, true)"));
			return false;
		}
	}
	void AutoFish(const int& predictGrade)
	{
		bool enabled = false;
		static int disableFishing;

		//stop fishing if there are no free inventory slots
		if (m_ui8_free_inventory_slots <= BDO::Fishing::freeSlots)
		{
			BDO::Fishing::activation = false;

			if (BDO::Fishing::shutdownOnFull)
				ExitProcess(0);

			return;
		}
		//check if holding fishing equipments
		for (int count = 0; count < sizeof(m_i16_fishing_equipments); count++)
		{
			if (m_ui32_current_mainhand == m_i16_fishing_equipments[count])
			{
				enabled = true;
				break; //break out of loop if found for performance
			}
			else
				enabled = false;
		}
		//check whether or not the player is able to press space to start or grab fish
		if (enabled)
			InputEvents(AnimationCheck(1, XorStringA("")), BDOEnums::KeyCode_SPACE, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None);

		//if fishing then reset switch fishing equipment count
		if (AnimationCheck(3, XorStringA("FISHING")) || AnimationCheck(3, XorStringA("HARPOON")))
			disableFishing = 0;

		//switch fishing equipment if mainhand durability is zero
		if (AnimationCheck(2, "") && m_ui16_current_mainhand_durability == 0)
		{
			//switch fishing equipment then check for the new fishing equipment durability
			if (SwitchRod() && m_ui16_current_mainhand_durability == 0)
			{
				disableFishing++;

				if (disableFishing == 10) //will check 10 times for rods before stop fishing
				{
					BDO::Fishing::activation = false;
					return;
				}
			}
			else //attempt to use up the last fishing equipment's durability
				InputEvents(AnimationCheck(1, XorStringA("")), BDOEnums::KeyCode_SPACE, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None);
		}

		BDO::Fishing::currentGrade = m_ui8_fish_grade;

		if ((AnimationCheck(4, XorStringA("FISHING_WAIT")) || AnimationCheck(4, XorStringA("HARPOON_AIM_WAIT"))) && m_ui8_fish_grade < predictGrade)
		{
			//SwitchRod(); 
			m_ui8_is_fishing = 0;
		}
		//else if (m_ui8_fish_grade < 0 || m_ui8_fish_grade > 3)
		//{
		//	fLog("grade detected: %d", m_ui8_fish_grade);
		//}
	}

	void AutoManufacture()
	{
		//auto manufacture
		static bool storageCheck, waitCheck, ManufacturingCheck;
		if (BDO::Manufacture::activation)
		{
			if (*BDO::g_pWarehouse && g_v_manufacture_file.size() == 0)
			{
				BDO::Manufacture::activation = false;
				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Filter File Not Loaded!<PAOldColor>')"));
			}
			else if (*BDO::g_pWarehouse && g_v_manufacture_file.size() != 0)
			{
				//fetch warehouse information
				std::vector<StoragePipe>storageInfo;
				uint32_t maxStorageSlots = DumpWarehouse(2, &storageInfo);

				//fetch inventory information
				std::vector<InvenPipe>inventoryInfo;
				int8_t maxInventorySlots = DumpInventory(2, &inventoryInfo);

				static int slotNo_w, procType_w;
				static std::string procType_wn;
				if (!AnimationCheck(3, XorStringA("MANUFACTURE")) && !storageCheck)
				{
					for (int count = 0; count < g_v_manufacture_file.size(); count++)//const auto& filter : manufacturefile)
					{
						for (const auto& storage : storageInfo)
						{
							if (storage.m_ui16_item_id == g_v_manufacture_file[count].itemId && storage.m_ui32_item_count >= 10)
							{
								slotNo_w = storage.m_ui8_slot;
								procType_w = g_v_manufacture_file[count].procType_w;
								procType_wn = g_v_manufacture_file[count].procType_wn;
								storageCheck = true;
								goto endLoop;
							}
						}
						if (count == g_v_manufacture_file.size() - 1)
						{
							BDO::Manufacture::activation = false;
						}
					}
				}
			endLoop:

				//move items from inventory to warehouse
				if (AnimationCheck(3, XorStringA("MANUFACTURE")) && !AnimationCheck(3, procType_wn))
				{
					LuaExecutor(XorStringA("inventoryToWarehouse(2,") + std::to_string(inventoryInfo[2].m_ui32_item_count) + ')');
					waitCheck = true;
				}
				else if (inventoryInfo[4].m_ui32_item_count > 0 && !waitCheck)
				{
					LuaExecutor(XorStringA("inventoryToWarehouse(4,") + std::to_string(inventoryInfo[4].m_ui32_item_count) + ')');
					waitCheck = true;
				}
				else if (inventoryInfo[3].m_ui32_item_count > 0 && !waitCheck)
				{
					LuaExecutor(XorStringA("inventoryToWarehouse(3,") + std::to_string(inventoryInfo[3].m_ui32_item_count) + ')');
					waitCheck = true;
				}

				//move items from warehouse to inventory
				if (slotNo_w >= storageInfo.size())
				{
					BDO::Manufacture::activation = false;
					return;
				}

				if (inventoryInfo[2].m_ui32_item_count < 20 && storageInfo[slotNo_w].m_ui32_item_count >= 10 && !waitCheck)
				{
					LuaExecutor(XorStringA("warehouseToInventory(") + std::to_string(slotNo_w) + XorStringA(", 10)"));
					waitCheck = true;
				}

				if (TimerFunction(2000) && waitCheck)
				{
					waitCheck = false;
					storageCheck = false;
				}

				if (!AnimationCheck(3, XorStringA("MANUFACTURE")) && inventoryInfo[2].m_ui32_item_count != 0 && !ManufacturingCheck)
				{
					ManufacturingCheck = true;
					switch (procType_w)
					{
					case 0:
						LuaExecutor(XorStringA("inventoryShake(2)"));
						break;
					case 1:
						LuaExecutor(XorStringA("inventoryGrind(2)"));
						break;
					case 2:
						LuaExecutor(XorStringA("inventoryChop(2)"));
						break;
					case 3:
						LuaExecutor(XorStringA("inventoryDry(2)"));
						break;
					case 4:
						LuaExecutor(XorStringA("inventoryThinning(2)"));
						break;
					case 5:
						LuaExecutor(XorStringA("inventoryHeat(2)"));
						break;
					}
				}

				if (AnimationCheck(3, XorStringA("MANUFACTURE")))
				{
					ManufacturingCheck = false;
				}
			}
			else
			{
				BDO::Manufacture::activation = false;
				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Must be Nearby a warehouse<PAOldColor>')"));
			}
		}
		else //reset if turned off
		{
			storageCheck = false;
			waitCheck = false;
			ManufacturingCheck = false;
		}
	}
};

ESP& ESP::GetInstance()
{
	static ESP context;
	return context;
}
void ESP::DrawESP()
{
	float& l_f_self_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float& l_f_self_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float& l_f_self_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

	int matrix_counter = 0; //counter goes up by 4, to 60 || 0x0 -> 0x3C
	for (int x = 0; x < 4; x++)
	{
		for (int y = 0; y < 4; y++)
		{
			readViewMatrix[y][x] = *((float*)(g_kuip_ViewMatrix + matrix_counter));
			matrix_counter += 4;
		}
	}

	//Get the Dot Products from the View Angles of the player
	oriScreen[0] = readViewMatrix[0][0] * l_f_self_position_x + readViewMatrix[0][1] * l_f_self_position_y + readViewMatrix[0][2] * l_f_self_position_z + readViewMatrix[0][3];
	oriScreen[1] = readViewMatrix[1][0] * l_f_self_position_x + readViewMatrix[1][1] * l_f_self_position_y + readViewMatrix[1][2] * l_f_self_position_z + readViewMatrix[1][3];
	float w = (readViewMatrix[3][0] * l_f_self_position_x + readViewMatrix[3][1] * l_f_self_position_y + readViewMatrix[3][2] * l_f_self_position_z + readViewMatrix[3][3]);

	//make sure the enemy is in front of the player. if not, return.
	if (w < 0.01f)
	{
		return;
	}

	float Pinvw = 1.0f / w;
	oriScreen[0] *= Pinvw;
	oriScreen[1] *= Pinvw;

	//calculate the center of the screen
	float x = screenWidth / 2;
	float y = screenHeight / 2;

	//calculates the screen coordinates
	x += 0.5f * oriScreen[0] * screenWidth + 0.5f;
	y -= 0.5f * oriScreen[1] * screenHeight + 0.5f;

	oriScreen[0] = x + rect.left;
	oriScreen[1] = y + rect.top;

	oriPos0 = oriScreen[0];
	oriPos1 = oriScreen[1];

	uint64_t& actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
	uint32_t& actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
	uint64_t& firstEntry = ((uint64_t)(actorListFirstEntry));
	uint64_t currentEntry = (*(uint64_t*)(firstEntry));

	uint8_t getLevel = 99;
	float l_f_target_position_x, l_f_target_position_y, l_f_target_position_z;
	std::vector<ActorListManager> actorListInfo;
	std::vector<ActorListESP> actorListPositions;
	while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
	{
		uint64_t& actorData_data = *((uint64_t*)(currentEntry + 0x18));

		actorListInfo.emplace_back(((uint64_t)(actorData_data)));
		currentEntry = *((uint64_t*)(currentEntry));
	}
	for (const auto& actors : actorListInfo)
	{
		uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));
		if (actorType_check != BDO::ESP::targetType && BDO::ESP::targetType != 10)
			continue;

		//std::wstring_view l_ws_name(*((std::wstring_view*)(actors.m_ui64_address + g_ki32_CharacterName)));
		//if (l_ws_name.find(L" Wagon") != std::wstring_view::npos || l_ws_name.find(L" Ship") != std::wstring_view::npos || l_ws_name.find(L" Shuttle") != std::wstring_view::npos)
		//	continue;
		//std::wstring testname = std::wstring(l_ws_name.data());
		//std::string l_s_name(testname.begin(), testname.end());
		//cLog("%s", l_s_name.c_str());

		//get actor name
		const wchar_t* l_wcpName = (*((const wchar_t**)(actors.m_ui64_address + g_ki32_CharacterName)));
		if (wcsstr(l_wcpName, XorStringW(L" Wagon")) != 0 || wcsstr(l_wcpName, XorStringW(L" Ship")) != 0 || wcsstr(l_wcpName, XorStringW(L" Shuttle")) != 0) { continue; }
		char l_cName[33];
		wcstombs(l_cName, l_wcpName, sizeof(l_cName));

		if (actorType_check <= 3)
		{
			bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));
			if (dead_actor)
				continue;

			//get player level
			if (actorType_check == 0)
				getLevel = *((uint8_t*)(actors.m_ui64_address + g_ki32_Level));

			l_f_target_position_x = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[0]));
			l_f_target_position_y = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[1]));
			l_f_target_position_z = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[2]));
		}
		else if (actorType_check == 6)
		{
			l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[0]));
			l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[1]));
			l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[2]));
		}
		else
		{
			l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0]));
			l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1]));
			l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2]));
		}
		//get actor id
		uint16_t& actorID = *((uint16_t*)(actors.m_ui64_address + g_ki32_ActorId));

		float pX = l_f_self_position_x - l_f_target_position_x;
		float pY = l_f_self_position_y - l_f_target_position_y;
		float pZ = l_f_self_position_z - l_f_target_position_z;
		uint32_t target_distance = sqrt(pX * pX + pY * pY + pZ * pZ);

		if (BDO::ESP::targetType == 10 && g_um_esp_actor_id.size() != 0)
			for (const auto& targetType : g_um_esp_actor_id)
			{
				if (l_cName == targetType.first || actorID == targetType.second)
					actorListPositions.emplace_back(l_cName, actorID, getLevel, l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_distance);
			}
		else if (BDO::ESP::targetType != 10)
			actorListPositions.emplace_back(l_cName, actorID, getLevel, l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_distance);
	}
	int maxdraw = 0;
	for (const auto& render_target : actorListPositions)
	{
		if (maxdraw > 50) //draw max of 50 targets
			break;
		float Tw = 0.0f;
		desScreen[0] = readViewMatrix[0][0] * render_target.m_f_position_x + readViewMatrix[0][1] * render_target.m_f_position_y + readViewMatrix[0][2] * render_target.m_f_position_z + readViewMatrix[0][3];
		desScreen[1] = readViewMatrix[1][0] * render_target.m_f_position_x + readViewMatrix[1][1] * render_target.m_f_position_y + readViewMatrix[1][2] * render_target.m_f_position_z + readViewMatrix[1][3];
		Tw = readViewMatrix[3][0] * render_target.m_f_position_x + readViewMatrix[3][1] * render_target.m_f_position_y + readViewMatrix[3][2] * render_target.m_f_position_z + readViewMatrix[3][3];

		if (Tw < 0.01f)
			continue;

		float Tinvw = 1.0f / Tw;
		desScreen[0] *= Tinvw;
		desScreen[1] *= Tinvw;

		float Tx = (float)(screenWidth / 2);
		float Ty = (float)(screenHeight / 2);

		Tx += (float)(0.5 * desScreen[0] * screenWidth + 0.5);
		Ty -= (float)(0.5 * desScreen[1] * screenHeight + 0.5);

		desScreen[0] = Tx + rect.left;
		desScreen[1] = Ty + rect.top;

		desPos0 = desScreen[0];
		desPos1 = desScreen[1];

		if (BDO::ESP::drawESP)
		{
			if (BDO::ESP::drawESP_line)
				rDrawLine(Vector2(oriPos0, oriPos1), Vector2(desPos0, desPos1), ImColor(25, 255, 255, 255), true);
			if (BDO::ESP::drawESP_circle)
				rDrawCircle(Vector2(desPos0, desPos1), 5.0f, ImColor(0, 25, 255, 255), 1, false);
			if (BDO::ESP::drawESP_name)
				rDrawText(ImGui::GetFont(), XorStringA("NAME: ") + render_target.m_s_name, ImVec2(desPos0, desPos1 += 5.0f), 20.0f, ImColor(255, 0, 0, 255), true);
			if (BDO::ESP::drawESP_id)
				rDrawText(ImGui::GetFont(), XorStringA("ID: ") + std::to_string(render_target.m_ui16_id), ImVec2(desPos0, desPos1 += 20.0f), 15.0f, ImColor(255, 255, 255, 255), true);
			if (BDO::ESP::drawESP_level)
				rDrawText(ImGui::GetFont(), XorStringA("LEVEL: ") + std::to_string(render_target.m_ui8_level), ImVec2(desPos0, desPos1 += 15.0f), 15.0f, ImColor(255, 255, 255, 255), true);
			if (BDO::ESP::drawESP_distance)
				rDrawText(ImGui::GetFont(), XorStringA("DISTANCE: ") + std::to_string(render_target.m_i32_distance), ImVec2(desPos0, desPos1 += 15.0f), 15.0f, ImColor(255, 255, 255, 255), true);
		}
		maxdraw++;
	}
}
void ESP::DrawOnWorldMap()
{
	uint64_t& Base = *((uint64_t*)(g_kuip_Base));
	uint64_t& Baseptr1 = *((uint64_t*)(Base + 0x18));
	uint64_t& Baseptr2 = *((uint64_t*)(Baseptr1 + 0x178)); //was 0x160 -> 168
	uint64_t worldmapviewmatrix = Baseptr2 + 0x6F4; //was 0x5F4
	uint32_t& isworldmapopened = *((uint32_t*)(Baseptr2 + 0x800)); //was 0x700

	if (isworldmapopened != 0)
	{
		uint64_t& actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
		uint32_t& actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
		uint64_t& firstEntry = ((uint64_t)(actorListFirstEntry));
		uint64_t currentEntry = (*(uint64_t*)(firstEntry));

		int matrixCounter = 0; //counter goes up by 4, to 60 || 0x0 -> 0x3C
		for (int x = 0; x < 4; x++)
		{
			for (int y = 0; y < 4; y++)
			{
				readViewMatrix[y][x] = *((float*)(worldmapviewmatrix + matrixCounter));
				matrixCounter += 4;
			}
		}

		float getPosX, getPosY, getPosZ;
		std::vector<ActorListManager> actorListInfo; //in actordata.h
		std::vector<ActorListESP> actorListPositions; //in actordata.h

		while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
		{
			uint64_t& actorData_data = *((uint64_t*)(currentEntry + 0x18));

			actorListInfo.emplace_back(((uint64_t)(actorData_data)));
			currentEntry = *((uint64_t*)(currentEntry));
		}
		for (const auto& actors : actorListInfo)
		{
			uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));
			if (actorType_check != BDO::ESP::targetType && BDO::ESP::targetType != 10)
				continue;

			//get actor name
			const wchar_t* l_wcpName = (*((const wchar_t**)(actors.m_ui64_address + g_ki32_CharacterName)));
			if (wcsstr(l_wcpName, XorStringW(L" Wagon")) != 0 || wcsstr(l_wcpName, XorStringW(L" Ship")) != 0 || wcsstr(l_wcpName, XorStringW(L" Shuttle")) != 0) { continue; }
			char l_cName[33]; //max of 32 characters, include '\0' terminator
			wcstombs(l_cName, l_wcpName, sizeof(l_cName));

			if (actorType_check <= 3)
			{
				bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));
				if (dead_actor)
					continue;

				getPosX = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[0]));
				getPosY = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[1]));
				getPosZ = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[2]));
			}
			else if (actorType_check == 6)
			{
				getPosX = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[0]));
				getPosY = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[1]));
				getPosZ = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[2]));
			}
			else
			{
				getPosX = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0]));
				getPosY = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1]));
				getPosZ = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2]));
			}
			//get actor id
			uint16_t& actorID = *((uint16_t*)(actors.m_ui64_address + g_ki32_ActorId));

			if (BDO::ESP::targetType == 10 && g_um_esp_actor_id.size() != 0)
				for (const auto& targetType : g_um_esp_actor_id)
				{
					if (l_cName == targetType.first || actorID == targetType.second)
						actorListPositions.emplace_back("", actorID, 0, getPosX, getPosY, getPosZ, 0);
				}
			else if (BDO::ESP::targetType != 10)
				actorListPositions.emplace_back("", actorID, 0, getPosX, getPosY, getPosZ, 0);
		}
		int maxdraw = 0;
		for (const auto& render_target : actorListPositions)
		{
			if (maxdraw > 50) //draw max of 50 targets
				break;
			float Tw = 0.0f;
			desScreen[0] = readViewMatrix[0][0] * render_target.m_f_position_x + readViewMatrix[0][1] * render_target.m_f_position_y + readViewMatrix[0][2] * render_target.m_f_position_z + readViewMatrix[0][3];
			desScreen[1] = readViewMatrix[1][0] * render_target.m_f_position_x + readViewMatrix[1][1] * render_target.m_f_position_y + readViewMatrix[1][2] * render_target.m_f_position_z + readViewMatrix[1][3];
			Tw = readViewMatrix[3][0] * render_target.m_f_position_x + readViewMatrix[3][1] * render_target.m_f_position_y + readViewMatrix[3][2] * render_target.m_f_position_z + readViewMatrix[3][3];

			if (Tw < 0.01f)
				continue;

			float Tinvw = 1.0f / Tw;
			desScreen[0] *= Tinvw;
			desScreen[1] *= Tinvw;

			float Tx = screenWidth / 2;
			float Ty = screenHeight / 2;

			Tx += 0.5 * desScreen[0] * screenWidth + 0.5;
			Ty -= 0.5 * desScreen[1] * screenHeight + 0.5;

			desScreen[0] = Tx + rect.left;
			desScreen[1] = Ty + rect.top;

			desPos0 = desScreen[0];
			desPos1 = desScreen[1];

			rDrawCircle(Vector2(desPos0, desPos1), 3, ImColor(255, 0, 0, 255), 1, true);
			maxdraw++;
		}
	}
}
void ESP::DrawWayPoints()
{
	int matrixCounter = 0; //counter goes up by 4, to 60 || 0x0 -> 0x3C
	for (int x = 0; x < 4; x++)
	{
		for (int y = 0; y < 4; y++)
		{
			readViewMatrix[y][x] = *((float*)(g_kuip_ViewMatrix + matrixCounter));
			matrixCounter += 4;
		}
	}

	for (auto& render_target : g_v_waypoints_file)
	{
		float Tw = 0.0f;
		desScreen[0] = readViewMatrix[0][0] * render_target.m_f_x + readViewMatrix[0][1] * render_target.m_f_y + readViewMatrix[0][2] * render_target.m_f_z + readViewMatrix[0][3];
		desScreen[1] = readViewMatrix[1][0] * render_target.m_f_x + readViewMatrix[1][1] * render_target.m_f_y + readViewMatrix[1][2] * render_target.m_f_z + readViewMatrix[1][3];
		Tw = (float)(readViewMatrix[3][0] * render_target.m_f_x + readViewMatrix[3][1] * render_target.m_f_y + readViewMatrix[3][2] * render_target.m_f_z + readViewMatrix[3][3]);

		if (Tw < 0.01f)
			continue;

		float Tinvw = 1.0f / Tw;
		desScreen[0] *= Tinvw;
		desScreen[1] *= Tinvw;

		float Tx = (float)(screenWidth / 2);
		float Ty = (float)(screenHeight / 2);

		Tx += (float)(0.5 * desScreen[0] * screenWidth + 0.5);
		Ty -= (float)(0.5 * desScreen[1] * screenHeight + 0.5);

		desScreen[0] = Tx + rect.left;
		desScreen[1] = Ty + rect.top;

		desPos0 = (int)desScreen[0];
		desPos1 = (int)desScreen[1];

		rDrawCircle(Vector2(desPos0, desPos1), 3, ImColor(255, 0, 0, 255), 1, true);
	}
}

inline bool ActorsDetection(const bool& overwrite_safety_check)
{
	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

	uint64_t& actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
	uint32_t& actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
	uint64_t currentEntry = *((uint64_t*)(actorListFirstEntry));

	std::vector<ActorListManager> actorListInfo;
	actorListInfo.reserve(actorListCount);
	while (currentEntry != actorListFirstEntry)
	{
		actorListInfo.emplace_back(*((uint64_t*)(currentEntry + 0x18)));
		currentEntry = *((uint64_t*)(currentEntry));
	}

	for (const auto& actors : actorListInfo)
	{
		uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

		//player detection
		if (actorType_check == BDOEnums::ActorType_Player && !overwrite_safety_check)
		{
			uint64_t& l_ui64_target_actor_name = *((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterName));
			uint64_t& l_ui64_self_player_name = *((uint64_t*)(local_player_address + g_ki32_CharacterName));

			if (l_ui64_target_actor_name != l_ui64_self_player_name)
			{
				if(BDO::Fishing::activation)
				fLog(XorStringA("%lld"), l_ui64_target_actor_name);

				return true;
			}
		}
		else if (actorType_check == BDOEnums::ActorType_Deadbody)//loot dead bodies
		{
			bool& actorHasBeenLooted = *((bool*)(actors.m_ui64_address + g_ki32_actorHasBeenLooted)); //false means yes (I know -_-)

			//target actor distance = target.pos - self.pos
			float target_actor_distance = sqrt(
				(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
				//(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
				(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));

			if (!actorHasBeenLooted && target_actor_distance <= 350.0f)
				g_t_RequestDroppedItems(*((uint64_t*)g_kuip_LocalPlayer), actors.m_ui64_address);
		}
	}

	return false;
}
inline uint8_t MonstersDetection(const float& x, const float& y, const float& z)
{
	if (BDO::Grinder::monsterDetection)
	{
		uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

		//teleport
		uint64_t& character_control_address = *((uint64_t*)(local_player_address + g_ki32_CharacterController));
		uint64_t& character_scene_address = *((uint64_t*)(character_control_address + g_ki32_CharacterScene));
		uint64_t& teleport_1 = *((uint64_t*)(character_scene_address + g_ki32_teleport_1));
		uint64_t& teleport_2 = *((uint64_t*)(teleport_1 + g_ki32_teleport_2));
		uint64_t& teleport_3 = *((uint64_t*)(teleport_2 + g_ki32_teleport_3));

		uint64_t& actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
		uint32_t& actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
		uint64_t currentEntry = *((uint64_t*)(actorListFirstEntry));

		std::vector<ActorListManager> actorListInfo;
		actorListInfo.reserve(actorListCount);
		while (currentEntry != actorListFirstEntry)
		{
			actorListInfo.emplace_back(*((uint64_t*)(currentEntry + 0x18)));
			currentEntry = *((uint64_t*)(currentEntry));
		}

		for (const auto& actors : actorListInfo)
		{
			uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

			if (actorType_check == BDOEnums::ActorType_Monster)
			{
				bool& target_actor_dead = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor)); //false if the actor is not dead

				float target_actor_distance = sqrt(
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));

				if (!target_actor_dead && target_actor_distance <= BDO::Grinder::monsterRange)
					return 1;
			}
			else if (actorType_check == BDOEnums::ActorType_Deadbody)
			{
				bool& actorHasBeenLooted = *((bool*)(actors.m_ui64_address + g_ki32_actorHasBeenLooted)); //false means yes (I know -_-)

				float target_actor_distance = sqrt(
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - x) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - x) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - y) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - y) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - z) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - z));

				if ((BDO::Grinder::teleportLooting && !actorHasBeenLooted) && (target_actor_distance > 300.0f && target_actor_distance <= BDO::Grinder::teleportLootingRange))
				{
					*((float*)(teleport_3 + g_ki32_teleport_y)) = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[1])) / 100;
					*((float*)(teleport_3 + g_ki32_teleport_x)) = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[0])) / 100;
					*((float*)(teleport_3 + g_ki32_teleport_z)) = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[2])) / 100;
					return 2;
				}
			}
		}
	}

	return 0;
}
inline void PlayerCombat()
{
	int skill_type = 0;
	static bool on_cooldown = true;
	if (TimerFunction(10000))
		on_cooldown = false;
	switch (skill_type) //skill + cooldown time
	{
	case 0: //movement skills
		if (!on_cooldown)
		{
			InputEvents(1, BDOEnums::KeyCode_W, BDOEnums::KeyCode_F, BDOEnums::KeyCode_None);
			on_cooldown = true;
		}
		break;
	case 1:	//melee skills
		if (2)


			break;
	case 2:	//range skills
		if (3)


			break;
	case 3:	//heal skills
		if (4)


			break;
	}
}

void DebugTest()
{
	uint64_t& local_player_address = *BDO::g_pLocalPlayer;

	uint64_t& actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
	uint32_t& actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
	uint64_t& firstEntry = ((uint64_t)(actorListFirstEntry));
	uint64_t currentEntry = (*(uint64_t*)(firstEntry));

	std::vector<ActorListManager> actorListInfo;
	actorListInfo.reserve(actorListCount);
	while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
	{
		uint64_t actorData_data = *((uint64_t*)(currentEntry + 0x18));

		actorListInfo.emplace_back(((uint64_t)(actorData_data)));
		currentEntry = *((uint64_t*)(currentEntry));
	}

	for (const auto& actors : actorListInfo)
	{
		//get actor name
		const wchar_t* l_wcpName = (const wchar_t*)(*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterName)));
		char l_cName[33];
		wcstombs(l_cName, l_wcpName, sizeof(l_cName));

		uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

		if (actorType_check == 6)
		{
			float& l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[0]));
			float& l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[1]));
			float& l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[2]));

			float target_actor_distance = sqrt(
				(l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
				(l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
				(l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2])))
			);

			fLog(XorStringA("address: %p, floatx: %f, floaty: %f, floatz: %f, distance: %f, actorType: %d, name: %s"), actors.m_ui64_address,
				l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_actor_distance, actorType_check, l_cName);
		}
		else
		{
			float& l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0]));
			float& l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1]));
			float& l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2]));

			float target_actor_distance = sqrt(
				(l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
				(l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
				(l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2])))
			);

			fLog(XorStringA("address: %p, floatx: %f, floaty: %f, floatz: %f, distance: %f, actorType: %d, name: %s"), actors.m_ui64_address,
				l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_actor_distance, actorType_check, l_cName);
		}
	}
}
void PrintAnimationIDandNames()
{
	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t& characterControllerPtr = *((uint64_t*)(local_player_address + g_ki32_CharacterController));
	uint64_t& currentAnimationPtr = *((uint64_t*)(characterControllerPtr + 0x38));
	uint64_t& currentAnimation = *((uint64_t*)(currentAnimationPtr + 0x20));
	uint32_t& animationId = *((uint32_t*)(currentAnimation));

	uint64_t& stringTable_address = *((uint64_t*)(g_kuip_StringTable_ASCII));
	uint64_t& stringTable = *((uint64_t*)(stringTable_address));

	uint64_t NameEntryAddy = (stringTable + (0x10 * animationId));
	//std::string animationName((char*)(*((uint64_t*)(NameEntryAddy)))); //less effcient, it has to allocate a buffer and copy the string into it
	char* animationName = (char*)(*((uint64_t*)(NameEntryAddy))); //most effcient, works for ASCII but only print the first character for Unicode

	fLog(XorStringA("printing: %d, %x, %s"), animationId, NameEntryAddy, animationName);
}

void RBFSuicide()
{
	Entity entity;

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);
	for (int x = 0; x < 7; x++)
	{
		//entity.Teleportation(0.0f, 0.0f, 6.0f, 1, 500);
		entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);
	for (int x = 0; x < 7; x++)
	{
		//entity.Teleportation(0.0f, 0.0f, 6.0f, 1, 500);
		entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);
	for (int x = 0; x < 6; x++)
	{
		//entity.Teleportation(0.0f, 0.0f, 6.0f, 1, 500);
		entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);
	for (int x = 0; x < 6; x++)
	{
		//entity.Teleportation(0.0f, 0.0f, 6.0f, 1, 500);
		entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);
	for (int x = 0; x < 6; x++)
	{
		//entity.Teleportation(0.0f, 0.0f, 6.0f, 1, 500);
		entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 500);
	}

	entity.Teleportation(3116.103125f, -82.64145508f, 6105.249375f, 0, 1000);
	entity.MoveTo(311610.3125f, -8264.145508f, 610524.9375f);
}
void BASuicide()
{
	Entity entity;

	for (int x = 0; x < 3; ++x)
	{
		entity.Teleportation(0.0f, 0.0f, -20.0f, 2, 1000);
	}

	entity.Teleportation(1390.000f, 80.0f, 3330.000f, 0, 1000);
	entity.Teleportation(1400.0f, 70.0f, 3320.0f, 0, 3000);
}
void AutomateFishing()
{
	BDO::Fishing::automateFishing = false;

	Entity entity;

	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	float old_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float old_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float old_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
	//rbf boat position: 3324, -82.080, 6525.680

	LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));

	std::this_thread::sleep_for(std::chrono::seconds(9));

	//LuaExecutor(XorStringA("inventoryUseItem(CppEnums.ItemWhereType.eInventory, 2, 0, true)"));

	std::this_thread::sleep_for(std::chrono::seconds(1));

	float& new_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float& new_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float& new_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
	float distance = sqrt((new_PosX - old_PosX) * (new_PosX - old_PosX) + (new_PosY - old_PosY) * (new_PosY - old_PosY) + (new_PosZ - old_PosZ) * (new_PosZ - old_PosZ));
	if (distance < 500)
	{
		fLog(XorStringA("Automated Fishing failed, unable to join red battlefield"));
		return;
	}
	//float rbf_black[3] = { 3261.710f, 100.0f, 6133.130f };
	//float rbf_red[3] = { 3440.000f, 100.0f, 6141.0f };
	//float ba[3] = { 1384.76f, 100.0f, 3373.61f };

	RBFSuicide();

	//sleep until reached targetted fishing location
	BDO::Character::activation = true;
	std::this_thread::sleep_for(std::chrono::seconds(10));

	BDO::Character::animationSpeed = 10.0f;
	std::this_thread::sleep_for(std::chrono::microseconds(100));
	BDO::Fishing::lockPosX = true;
	std::this_thread::sleep_for(std::chrono::microseconds(100));
	BDO::Fishing::activation = true;

	while (BDO::Fishing::activation)
	{
		entity.Teleportation(3116.103125f, -82.64145508f, 6105.249375f, 0, 500);
		entity.Teleportation(3103.62375f, -82.23729492f, 6085.681875f, 0, 500);
		std::this_thread::sleep_for(std::chrono::seconds(1));
	}

	//LuaExecutor(XorStringA("inventoryUseItem(CppEnums.ItemWhereType.eInventory, 2, 0, true)"));

	std::this_thread::sleep_for(std::chrono::seconds(2));

	LuaExecutor(XorStringA("ToClient_UnJoinLocalWar()"));

	std::this_thread::sleep_for(std::chrono::seconds(9));

	//trader
	LuaExecutor(XorStringA("RemoteControl_Interaction()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_OpenTrade()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("HandleClicked_TradeItem_AllSell()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_LeaveDialog()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_LeaveDialog()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));

	BDO::Fishing::automateFishing = true;
}
void GrinderTeleport()
{
	Entity entity;
	uint16_t current_node = 0;
	uint16_t nearest_node = 0;
	float nearest_distance = FLT_MAX;

	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	float& current_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float& current_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float& current_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

	//find nearest node as start point
	for (const auto& grinding : g_v_waypoints_file)
	{
		float distance = sqrt((current_position_x - grinding.m_f_x) * (current_position_x - grinding.m_f_x) + (current_position_y - grinding.m_f_y) * (current_position_y - grinding.m_f_y) + (current_position_z - grinding.m_f_z) * (current_position_z - grinding.m_f_z));

		if (distance < nearest_distance)
		{
			nearest_distance = distance;
			nearest_node = current_node;
		}
		++current_node;
	}

	//start at the nearest node
	for (nearest_node; nearest_node < current_node; ++nearest_node)
	{
		if (!BDO::Grinder::activate)
			return;

		BDO::Grinder::lastWaypoint = nearest_node + 1; //waypoint vector starts at 0 while waypoint file starts at 1

		entity.Teleportation(g_v_waypoints_file[nearest_node].m_f_x / 100, g_v_waypoints_file[nearest_node].m_f_y / 100, g_v_waypoints_file[nearest_node].m_f_z / 100, g_v_waypoints_file[nearest_node].m_ui16_type, g_v_waypoints_file[nearest_node].m_ui16_delay);

		while (uint8_t result = MonstersDetection(g_v_waypoints_file[nearest_node].m_f_x, g_v_waypoints_file[nearest_node].m_f_y, g_v_waypoints_file[nearest_node].m_f_z) != 0 || BDO::Grinder::pause)
		{
			if (result == 2)
			{
				entity.Teleportation(g_v_waypoints_file[nearest_node].m_f_x / 100, g_v_waypoints_file[nearest_node].m_f_y / 100, g_v_waypoints_file[nearest_node].m_f_z / 100, g_v_waypoints_file[nearest_node].m_ui16_type, 10);
			}

			std::this_thread::sleep_for(std::chrono::milliseconds(10));
		}
	}

	//actual start
	while (BDO::Grinder::activate && !g_v_waypoints_file.empty())
	{
		uint16_t current_line_count = 1; //waypoint file starts at 1
		for (const auto& grinding : g_v_waypoints_file)
		{
			if (!BDO::Grinder::activate)
				return;

			BDO::Grinder::lastWaypoint = current_line_count; //get current waypoint

			entity.Teleportation(grinding.m_f_x / 100, grinding.m_f_y / 100, grinding.m_f_z / 100, grinding.m_ui16_type, grinding.m_ui16_delay);

			while (uint8_t result = MonstersDetection(grinding.m_f_x, grinding.m_f_y, grinding.m_f_z) != 0 || BDO::Grinder::pause)
			{
				if (result == 2)
				{
					entity.Teleportation(grinding.m_f_x / 100, grinding.m_f_y / 100, grinding.m_f_z / 100, grinding.m_ui16_type, 10);
				}

				std::this_thread::sleep_for(std::chrono::milliseconds(10));
			}

			++current_line_count;

			if (current_line_count == 1)
			{
				//initiate ingame variables linkage
				g_b_lua_pipe_call = true;
				while (BDOLuaVariables::sumtotalWeight >= 165) //close the game if weight is over 165%
				{
					static bool print_once = false;
					LuaExecutor(XorStringA("ToClient_JoinLocalWar()ToClient_SavageDefenceJoin()"));
					if (!print_once)
					{
						fLog(XorStringA("OverWeight"));
						print_once = true;
					}
					if (BDO::g_bReloadedUI)
					{
						ExitProcess(0);
					}
				}
			}
		}
	}
}
void GrinderWalk()
{
	static bool cleared = false;
	uint16_t current_node = 0;
	uint16_t nearest_node = 0;
	float nearest_distance = FLT_MAX;

	//grab current location
	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	float& current_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float& current_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float& current_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

	//movement functions
	float& destination_position_x = *((float*)(local_player_address + g_ki32_MovementDestinationX));
	float& destination_position_y = *((float*)(local_player_address + g_ki32_MovementDestinationY));
	float& destination_position_z = *((float*)(local_player_address + g_ki32_MovementDestinationZ));
	float& origin_position_x = *((float*)(local_player_address + g_ki32_MovementOriginX));
	float& origin_position_y = *((float*)(local_player_address + g_ki32_MovementOriginY));
	float& origin_position_z = *((float*)(local_player_address + g_ki32_MovementOriginZ));

	//find mobs
	uint64_t actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
	uint32_t actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
	uint64_t firstEntry = ((uint64_t)(actorListFirstEntry));
	uint64_t currentEntry = (*(uint64_t*)(firstEntry));
	std::vector<ActorListManager> actorListInfo;
	actorListInfo.reserve(actorListCount);

	//find nearest node as start point
	for (const auto& grinding : g_v_waypoints_file)
	{
		float distance = sqrt((current_position_x - grinding.m_f_x) * (current_position_x - grinding.m_f_x) + (current_position_y - grinding.m_f_y) * (current_position_y - grinding.m_f_y) + (current_position_z - grinding.m_f_z) * (current_position_z - grinding.m_f_z));

		if (distance < nearest_distance)
		{
			nearest_distance = distance;
			nearest_node = current_node;
		}
		++current_node;
	}

	//start at the nearest node
	for (nearest_node; nearest_node < current_node; ++nearest_node)
	{
		BDO::Grinder::lastWaypoint = nearest_node + 1; //waypoint vector starts at 0 while waypoint file starts at 1

		while (!cleared)
		{
			if (BDO::Grinder::activate)
				* ((uint8_t*)local_player_address + g_ki32_MovementControl) = 1.0f;
			else
				return;

			destination_position_x = g_v_waypoints_file[nearest_node].m_f_x;
			destination_position_y = g_v_waypoints_file[nearest_node].m_f_y;
			destination_position_z = g_v_waypoints_file[nearest_node].m_f_z;

			float destination_distance = sqrt((current_position_x - g_v_waypoints_file[nearest_node].m_f_x) * (current_position_x - g_v_waypoints_file[nearest_node].m_f_x)
				+ (current_position_z - g_v_waypoints_file[nearest_node].m_f_z) * (current_position_z - g_v_waypoints_file[nearest_node].m_f_z));

			//kill mob function
			while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
			{
				uint64_t actorData_data = *((uint64_t*)(currentEntry + 0x18));

				actorListInfo.emplace_back(((uint64_t)(actorData_data)));
				currentEntry = *((uint64_t*)(currentEntry));
			}

			for (const auto& actors : actorListInfo)
			{
				uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

				if (actorType_check == 1)
				{
					bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));

					float& l_f_target_position_x = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[0]));
					float& l_f_target_position_y = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[1]));
					float& l_f_target_position_z = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[2]));

					float monster_distance = sqrt(
						(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[0]))) +
						(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[1]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[1]))) +
						(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[2]))));


					//attack the monster if its in the radius
					while (monster_distance <= 150.0f && dead_actor == false)
					{
						destination_position_x = l_f_target_position_x;
						destination_position_y = l_f_target_position_y;
						destination_position_z = l_f_target_position_z;

						//use skills
						//PlayerCombat();
					}
				}
			}

			//reached destination, next node please
			if (destination_distance <= 150.0f)
				cleared = true;

			while (BDO::Grinder::pause)
				std::this_thread::sleep_for(std::chrono::milliseconds(200));

			actorListInfo.clear();
		}

		origin_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
		origin_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
		origin_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
		cleared = false;
	}

	//actual start
	while (BDO::Grinder::activate && !g_v_waypoints_file.empty())
	{
		uint16_t current_line_count = 1; //waypoint file starts at 1

		for (const auto& grinding : g_v_waypoints_file)
		{
			BDO::Grinder::lastWaypoint = current_line_count;

			while (!cleared)
			{
				if (BDO::Grinder::activate)
					* ((uint8_t*)local_player_address + g_ki32_MovementControl) = 1.0f;
				else
					return;

				destination_position_x = grinding.m_f_x;
				destination_position_y = grinding.m_f_y;
				destination_position_z = grinding.m_f_z;

				float destination_distance = sqrt((current_position_x - grinding.m_f_x) * (current_position_x - grinding.m_f_x)
					+ (current_position_z - grinding.m_f_z) * (current_position_z - grinding.m_f_z));

				//kill mob function
				while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
				{
					uint64_t actorData_data = *((uint64_t*)(currentEntry + 0x18));

					actorListInfo.emplace_back(((uint64_t)(actorData_data)));
					currentEntry = *((uint64_t*)(currentEntry));
				}

				for (const auto& actors : actorListInfo)
				{
					uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

					if (actorType_check == 1)
					{
						bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));

						float& l_f_target_position_x = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[0]));
						float& l_f_target_position_y = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[1]));
						float& l_f_target_position_z = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[2]));

						float monster_distance = sqrt(
							(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[0]))) +
							(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Static[2]))));


						//attack the monster if its in the radius
						while (monster_distance <= 150.0f && dead_actor == false)
						{
							destination_position_x = l_f_target_position_x;
							destination_position_y = l_f_target_position_y;
							destination_position_z = l_f_target_position_z;

							//use skills
							PlayerCombat();
						}
					}
				}

				//reached destination, next node please
				if (destination_distance <= 150.0f)
					cleared = true;

				while (BDO::Grinder::pause)
					std::this_thread::sleep_for(std::chrono::milliseconds(200));

				actorListInfo.clear();
			}

			origin_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
			origin_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
			origin_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
			cleared = false;
			++current_line_count;
		}
	}
}

void TossAwayJunkItems()
{
	//fetch inventory information
	std::vector<InvenPipe>inventoryInfo;
	int8_t maxInventorySlots = DumpInventory(2, &inventoryInfo);

	std::unordered_map<std::string, uint32_t> filterItems;
	std::string endReading = XorStringA("<end>");
	std::string itemName;
	int filteritemId;
	int filterdupCheck = 0;
	std::ifstream filterfin;
	filterfin.open(GetDirectoryFile(XorStringA("FilterItems.ini")), std::ifstream::in);
	while (filterfin.good())
	{
		std::getline(filterfin, itemName, ',');
		if (itemName.find(endReading) != std::string::npos)
			break;
		filterfin >> filteritemId;
		filterfin.ignore(1); //ignore newline
		if (filterdupCheck == filteritemId)
			break;
		filterItems.emplace(itemName, filteritemId);
		//Log("counter %d", filteritemId);
		filterdupCheck = filteritemId;
	}
	filterfin.close();

	std::string queue_up_lua_code;

	for (int x = 2; x < maxInventorySlots; x++) //trash garbage items
	{
		for (auto& target : filterItems)
		{
			if (inventoryInfo[x].m_ui16_item_id == target.second)
			{
				std::string slot = std::to_string(inventoryInfo[x].m_ui8_slot - 1);
				queue_up_lua_code += XorStringA("Inventory_DeleteItem(") + slot + XorStringA(")");
			}
		}
	}

	if (!queue_up_lua_code.empty())
		LuaExecutor(queue_up_lua_code.c_str());
}

void BaseFunctions()
{
	if (BDO::Grinder::playerDetection && ActorsDetection(BDO::Character::playerDetectorOverwrite))
	{
		LuaExecutor(XorStringA("getSelfPlayer():setActionChart('WAIT')ToClient_UnJoinPvpBattleGround()ToClient_UnJoinLocalWar()ToClient_GuildBattle_UnjoinGuildBattle()ToClient_SavageDefenceJoin()ToClient_JoinLocalWar()ToClient_JoinPvpBattleGround()"));
	}
	//debug
	if (BDO::g_bDebug)
	{
		//std::thread(InputEvents,true, BDOEnums::KeyCode_W, BDOEnums::KeyCode_F, BDOEnums::KeyCode_None).detach();
		//BDO::g_bDebug = false;
	}
	//BDO::g_bIsReadyToPlay
	if (*BDO::g_pLocalPlayer)
	{
		uint64_t& local_player_address = *BDO::g_pLocalPlayer;
		BDO::g_bIsReadyToPlay = *((uint8_t*)(local_player_address + g_ki32_IsReadyToPlay));

		//patching
		static bool l_b_firsttime;
		if (!l_b_firsttime)
		{
			//define foreground patch
			BYTE* m_bp_foregroundCheck = reinterpret_cast<BYTE*>(g_kuip_GetKeyInputStatePressed + 0x24);
			BYTE m_b_patchForegroundCheck[2] = { 0xEB,0x40 };
			//focus window patch
			BYTE* m_bp_checkFocus = reinterpret_cast<BYTE*>(g_kuip_PatchWindowFocus);
			BYTE m_b_patchFocus[3] = { 0x0F, 0x95, 0xC0 };

			memcpy(m_bp_foregroundCheck, m_b_patchForegroundCheck, sizeof(m_b_patchForegroundCheck));
			memcpy(m_bp_checkFocus, m_b_patchFocus, sizeof(m_b_patchFocus));
			l_b_firsttime = true;
		}

		uint64_t& mainWindowBaseAddress = *((uint64_t*)(g_kuip_MainWindowBase));
		bool hasFocus = mainWindowBaseAddress + 0x1490;
		if (!hasFocus)
			hasFocus = true;
	}
	else
	{
		BDO::g_bIsReadyToPlay = false;
	}
	//Check if channel/character switching/reloaded UI (leaving instance places), if so turn off everything.
	if (!BDO::g_bIsReadyToPlay || BDO::g_bReloadedUI)
	{
		if (BDO::Grinder::reloadCheck || BDO::Fishing::activation || BDO::Grinder::playerDetection)
		{
			if (BDO::Grinder::reloadCheck)
				fLog(XorStringA("Crash from random Reload"));

			if (BDO::Fishing::activation)
				fLog(XorStringA("Player or teleport detected while fishing"));

			if (BDO::Grinder::playerDetection)
				fLog(XorStringA("Player detected while grinding"));

			ExitProcess(0);
		}

		if (BDO::g_ucpIgnoreCollision != BDO::g_ucCollision_Normal)
			memcpy(BDO::g_ucpIgnoreCollision, BDO::g_ucCollision_Normal, sizeof(BDO::g_ucCollision_Normal));

		BDO::Character::activation = false;
		BDO::g_bGameLoadedFirstTime = false;
		BDO::Fishing::activation = false;
		BDO::Manufacture::activation = false;
		BDO::g_bReloadedUI = false;
		BDO::Grinder::petLoot = false;
		BDO::Grinder::playerDetection = false;
		BDO::Vehicle::activation = false;
		BDO::Grinder::activate = false;

	}
	else
	{
		Entity entity;

		uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
		uint64_t& character_control_address = *((uint64_t*)(local_player_address + g_ki32_CharacterController));
		uint64_t& character_scene_address = *((uint64_t*)(character_control_address + g_ki32_CharacterScene));
		if (ActorsDetection(BDO::Character::playerDetectorOverwrite) || !BDO::Character::activation)
		{
			memcpy(BDO::g_ucpPatchSpeed, BDO::g_ucSpeed_Normal, sizeof(BDO::g_ucSpeed_Normal));
			memcpy(BDO::g_ucpNoCooldown, BDO::g_ucCooldown_Normal, sizeof(BDO::g_ucCooldown_Normal));

			*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = 1.0f; //restore default animation speed

			if (!BDO::Character::activation)
			{
				BDO::Character::jumpHeight = 0.0f; //*((float*)(character_control_address + g_ki32_JumpHeight)); //restore default jump height
				BDO::Character::animationSpeed = 1.0f;
			}
		}
		else
		{
			//movement type
			if (BDO::Character::movementType == 1)
				memcpy(BDO::g_ucpPatchSpeed, BDO::g_ucSpeed_Fast, sizeof(BDO::g_ucSpeed_Fast));
			else
				memcpy(BDO::g_ucpPatchSpeed, BDO::g_ucSpeed_Normal, sizeof(BDO::g_ucSpeed_Normal));

			//no cooldown
			if (BDO::Character::noCooldown)
				memcpy(BDO::g_ucpNoCooldown, BDO::g_ucCooldown_Reduced, sizeof(BDO::g_ucCooldown_Reduced));
			else
				memcpy(BDO::g_ucpNoCooldown, BDO::g_ucCooldown_Normal, sizeof(BDO::g_ucCooldown_Normal));

			//*((float*)(character_control_address + g_ki32_JumpHeight)) = jumpHeight;

			if (BDO::Grinder::animationLock)
				* ((float*)(character_scene_address + g_ki32_CharacterAnimation)) = FLT_MAX;
			else if (!BDO::Grinder::animationLock && entity.AnimationCheck(0, "")) //activate only when attacking
				* ((float*)(character_scene_address + g_ki32_CharacterAnimation)) = BDO::Character::animationSpeed;
			else
				*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = 1.0f;
		}

		//draw esp
		if (BDO::ESP::drawESP)
			ESP::GetInstance().DrawESP();
		//draw on world map
		if (BDO::ESP::drawWorldMap)
			ESP::GetInstance().DrawOnWorldMap();
		//draw waypoints
		if (BDO::Grinder::showSavedPath)
			ESP::GetInstance().DrawWayPoints();

		//teleport to crosshair
		if (ImGui::IsKeyReleased(VK_F12) & 0x01)
		{
			entity.Teleportation(*((float*)(local_player_address + g_ki32_cursor_position_x)) / 100, *((float*)(local_player_address + g_ki32_cursor_position_y)) / 100, *((float*)(local_player_address + g_ki32_cursor_position_z)) / 100, 0, 100);
		}
		//if (ImGui::IsKeyReleased(VK_F1) & 0x01)
		//{
		//	animationLock = !animationLock;
		//}
		//auto manufacture
		if (BDO::Manufacture::activation)
			entity.AutoManufacture();

		//auto fishing
		if (BDO::Fishing::activation) //right now its doing fishing
		{
			if (!BDO::Fishing::lockPosX && BDO::Fishing::fishingPosX == NULL)
			{
				BDO::Fishing::fishingPosX = fabsf(*(float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
			}

			entity.AutoFish(BDO::Fishing::fishGrade);
			float getPosX = fabsf(*(float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
			float veriPos = fabsf(BDO::Fishing::fishingPosX - getPosX);

			if (BDO::Fishing::lockPosX)
				veriPos = 0.0f;

			if (ActorsDetection(BDO::Character::playerDetectorOverwrite) || !BDO::g_bIsReadyToPlay || veriPos > 1.0f) //check for players and teleport
			{
				if (veriPos > 1.0f)
					fLog(XorStringA("displacement detected: %f"), veriPos);
				else
					fLog(XorStringA("player detected during fishing"));

				LuaExecutor(XorStringA("getSelfPlayer():setActionChart('WAIT')ToClient_UnJoinPvpBattleGround()ToClient_UnJoinLocalWar()ToClient_GuildBattle_UnjoinGuildBattle()ToClient_SavageDefenceJoin()ToClient_JoinLocalWar()ToClient_JoinPvpBattleGround()"));
			}
		}
		else if (!BDO::Fishing::activation && BDO::Fishing::fishingPosX != NULL)
		{
			BDO::Fishing::fishingPosX = NULL;
		}
		if (BDO::Fishing::automateFishing)
		{
			std::thread(AutomateFishing).detach();
		}
		if (BDO::Grinder::petLoot)
		{
			static uint8_t pet_control = 1;
			if (TimerFunction(1800))
			{
				if (pet_control == 1)
				{
					LuaExecutor(XorStringA("FGlobal_HandleClicked_petControl_AllSeal(1)"));
					++pet_control;
				}
				else if (pet_control == 2)
				{
					LuaExecutor(XorStringA("FGlobal_HandleClicked_petControl_AllSeal(2)"));
					pet_control = 1;
					//++pet_control;
				}
				//else
				//{
				//	LuaExecutor(XorStringA("FGlobal_HandleClicked_petControl_AllSeal(3)"));
				//	pet_control = 1;
				//}
			}
		}
		if (BDO::Grinder::recordPath)
		{
			static float old_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0])), old_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1])), old_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

			float distance = sqrt(
				(*((float*)(local_player_address + g_ki32_WorldPosition_Self[0])) - old_PosX) * (*((float*)(local_player_address + g_ki32_WorldPosition_Self[0])) - old_PosX)
				+ (*((float*)(local_player_address + g_ki32_WorldPosition_Self[1])) - old_PosY) * (*((float*)(local_player_address + g_ki32_WorldPosition_Self[1])) - old_PosY)
				+ (*((float*)(local_player_address + g_ki32_WorldPosition_Self[2])) - old_PosZ) * (*((float*)(local_player_address + g_ki32_WorldPosition_Self[2])) - old_PosZ));

			if (distance >= 150) //log the position if the distance is at least 150
			{
				fLog(XorStringA("%f, %f, %f, 0, %.0f"), old_PosX, old_PosY + 50, old_PosZ, ceil(distance)/*delay is the same as distance*/);

				old_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
				old_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
				old_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
			}
		}

		//load Lua mod, wait 10seconds before auto load (change last tick)
		if (!BDO::g_bGameLoadedFirstTime && BDO::g_bIsReadyToPlay && TimerFunction(10000))
		{
			std::string path = GetDirectoryFile(XorStringA("lua\\"));
			std::string listOfLuaMods;
			for (const auto& listOfFiles : fs::directory_iterator(path))
			{
				listOfLuaMods = listOfFiles.path().string();
				LuaExecutor(XorStringA("loadfile([[") + listOfLuaMods + XorStringA("]])()"));
			}
			BDO::g_bGameLoadedFirstTime = true;
		}

		if (BDO::Character::selfBuffsType == 0)
		{
			//5 bars on all passive lifeskill + crit and luck
			*((int*)(local_player_address + g_ki32_Critical)) = 5;
			*((int*)(local_player_address + g_ki32_Luck)) = 5;
			*((int*)(local_player_address + g_ki32_Fishing)) = 5;
			*((int*)(local_player_address + g_ki32_Gathering)) = 5;
		}
		else if (BDO::Character::selfBuffsType == 1)
		{
			//7 bars on all passive lifeskill + crit and luck
			*((int*)(local_player_address + g_ki32_Critical)) = 7;
			*((int*)(local_player_address + g_ki32_Luck)) = 7;
			*((int*)(local_player_address + g_ki32_Fishing)) = 7;
			*((int*)(local_player_address + g_ki32_Gathering)) = 7;
		}
	}
	//Check if vehicle exist and if its channel/character switching
	if (*BDO::g_pLocalVehicle && BDO::g_bIsReadyToPlay)
	{
		uintptr_t& vehicle_base_address = *BDO::g_pLocalVehicle;

		uint32_t& acceleration = *((uint32_t*)(vehicle_base_address + g_ki32_mount_accel));
		uint32_t& speed = *((uint32_t*)(vehicle_base_address + g_ki32_mount_speed));
		uint32_t& turn = *((uint32_t*)(vehicle_base_address + g_ki32_mount_turn));
		uint32_t& brake = *((uint32_t*)(vehicle_base_address + g_ki32_mount_brake));

		if (ActorsDetection(BDO::Character::playerDetectorOverwrite) || !BDO::Vehicle::activation)
		{
			acceleration = 1490000;
			speed = 1590000;
			turn = 1450000;
			brake = 1450000;

			if (!BDO::Vehicle::activation)
			{
				BDO::Vehicle::acceleration = 149;
				BDO::Vehicle::speed = 159;
				BDO::Vehicle::turn = 145;
				BDO::Vehicle::brake = 145;
			}
		}
		else if (BDO::Vehicle::activation)
		{
			acceleration = BDO::Vehicle::acceleration * 10000;
			speed = BDO::Vehicle::speed * 10000;
			turn = BDO::Vehicle::turn * 10000;
			brake = BDO::Vehicle::brake * 10000;
		}
	}
}

void ShowMainMenu(bool* panel_open)
{
	//ImGui::SetNextWindowSize(ImVec2(500, 495));
	if (ImGui::Begin(XorStringA("Main Menu"), panel_open, ImGuiWindowFlags_AlwaysAutoResize))
	{
		if (ImGui::Button(XorStringA("End Game"), ImVec2(120, 20)))
		{
			ExitProcess(0);
		}
		ImGui::SameLine();
		if (ImGui::Button(XorStringA("Minimize"), ImVec2(120, 20)))
		{
			LuaExecutor(XorStringA("ToClient_CheckTrayIcon()"));
		}
		ImGui::SameLine();
		if (ImGui::Button(XorStringA("Load Mods"), ImVec2(120, 20)))
		{
			//lua script/filesystem
			std::string path = GetDirectoryFile(XorStringA("lua\\"));
			std::string listOfLuaMods;
			for (auto& listOfFiles : fs::directory_iterator(path))
			{
				listOfLuaMods = listOfFiles.path().string();
				LuaExecutor(XorStringA("loadfile([[") + listOfLuaMods + XorStringA("]])()"));
			}
		}
		ImGui::SameLine();
		if (ImGui::Button(XorStringA("Reload UI"), ImVec2(120, 20)))
		{
			LuaExecutor(XorStringA("ToClient_excuteReloadUI()"));
		}

		if (ImGui::CollapsingHeader(XorStringA("Lua Console")))
		{
			static char str0[256];
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.7455f);
			ImGui::InputText(XorStringA(""), str0, IM_ARRAYSIZE(str0));
			ImGui::PopItemWidth();
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("EXECUTE"), ImVec2(120, 20)))
			{
				std::string lua_message = str0;
				LuaExecutor((XorStringA("%s"), lua_message.c_str()));
				str0[0] = 0;
			}
			if (ImGui::Button(XorStringA("Revive to Node"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("deadMessage_RevivalExploration_Confirm()"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Revive to Town"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("deadMessage_RevivalVillage_Confirm()"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("RBF Suicide"), ImVec2(120, 20)))
			{
				std::thread(RBFSuicide).detach();
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("BA Suicide"), ImVec2(120, 20)))
			{
				std::thread(BASuicide).detach();
			}
			if (ImGui::Button(XorStringA("MoveTo Fishing"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("MoveTo_Fishing()"));
				//LuaExecutor(XorStringA("getSelfPlayer():setActionChart('WAIT')"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Join TB"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ToClient_joinPersonalBattle()"));
				//LuaExecutor(XorStringA("ServantInventory_OpenAll()"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Join RBF"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Join BA"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ToClient_JoinPvpBattleGround()"));
			}
		}
		if (ImGui::CollapsingHeader(XorStringA("Character")))
		{
			ImGui::Checkbox(XorStringA("Activation"), &BDO::Character::activation);
			ImGui::SameLine();
			ImGui::Checkbox(XorStringA("Overwrite"), &BDO::Character::playerDetectorOverwrite);
			ImGui::SameLine();
			ImGui::Checkbox(XorStringA("noCD"), &BDO::Character::noCooldown);
			ImGui::SameLine();
			ImGui::PushItemWidth(100.0f);
			ImGui::Combo(XorStringA("Movement Type"), &BDO::Character::movementType, BDO::Character::movementTypeList, IM_ARRAYSIZE(BDO::Character::movementTypeList));
			ImGui::PopItemWidth();
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.75f);
			ImGui::SliderFloat(XorStringA("Super Jump"), &BDO::Character::jumpHeight, 0.0f, 2500.0f);
			ImGui::SliderFloat(XorStringA("Character Speed"), &BDO::Character::animationSpeed, 0.0f, 10.0f); //character_speed
			ImGui::PopItemWidth();
			ImGui::Text(XorStringA("Ignore Collision"));
			if (ImGui::Button(XorStringA("Normal"), ImVec2(50, 20)))
			{
				memcpy(BDO::g_ucpIgnoreCollision, BDO::g_ucCollision_Normal, sizeof(BDO::g_ucCollision_Normal));
			}
			ImGui::SameLine(0, 5);
			if (ImGui::Button(XorStringA("Wall"), ImVec2(50, 20)))
			{
				memcpy(BDO::g_ucpIgnoreCollision, BDO::g_ucCollision_Wall, sizeof(BDO::g_ucCollision_Wall));
			}
			ImGui::SameLine(0, 5);
			if (ImGui::Button(XorStringA("Ground"), ImVec2(50, 20)))
			{
				memcpy(BDO::g_ucpIgnoreCollision, BDO::g_ucCollision_Ground, sizeof(BDO::g_ucCollision_Ground));
			}
			ImGui::SameLine(0, 5);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.75f);
			ImGui::Combo(XorStringA("Self Buffs"), &BDO::Character::selfBuffsType, BDO::Character::selfBuffsTypeList, IM_ARRAYSIZE(BDO::Character::selfBuffsTypeList));
			ImGui::PopItemWidth();
		}
		if (ImGui::CollapsingHeader(XorStringA("Grinder")))
		{
			ImGui::Checkbox(XorStringA("Record path"), &BDO::Grinder::recordPath);
			ImGui::SameLine();
			ImGui::PushItemWidth(150.0f);
			ImGui::InputInt(XorStringA("Delay"), &BDO::Grinder::recordPathDelay);
			ImGui::PopItemWidth();
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Grab WayPoints"), ImVec2(185, 20)))
			{
				uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

				float& getPosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
				float& getPosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
				float& getPosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

				fLog("%f, %f, %f, 0, %d", getPosX, getPosY, getPosZ, BDO::Grinder::recordPathDelay);
			}
			ImGui::Checkbox(XorStringA("Show Waypoints"), &BDO::Grinder::showSavedPath);
			ImGui::SameLine(200.0f);
			ImGui::Text(XorStringA("Last WayPoint: %d"), BDO::Grinder::lastWaypoint);

			//custom profiles loader starts
			static std::vector<std::string>found_profiles;
			if (ImGui::Button(XorStringA("Scan for Profiles"), ImVec2(485, 20)))
			{
				found_profiles.clear();
				std::string path = GetDirectoryFile(XorStringA("grind\\"));
				for (auto& listOfFiles : fs::directory_iterator(path))
				{
					std::string listOfGrindProfiles = listOfFiles.path().filename().string();

					found_profiles.emplace_back(listOfGrindProfiles);
				}
			}
			static const char* current_item = NULL;
			ImGui::PushItemWidth(150.0f);
			if (ImGui::BeginCombo(XorStringA("Profiles"), current_item)) // The second parameter is the label previewed before opening the combo.
			{
				for (const auto& profiles : found_profiles)
				{
					bool is_selected = (current_item == profiles.c_str()); // You can store your selection however you want, outside or inside your objects
					if (ImGui::Selectable(profiles.c_str(), is_selected))
						current_item = profiles.c_str();
					if (is_selected)
						ImGui::SetItemDefaultFocus();   // Set the initial focus when opening the combo (scrolling + for keyboard navigation support in the upcoming navigation branch)
				}
				ImGui::EndCombo();
			}
			ImGui::SameLine(252.0f);
			if (ImGui::Button(XorStringA("Load Profile"), ImVec2(240, 20)))
			{
				g_v_waypoints_file.clear();
				float ptX, ptY, ptZ;
				int type, delay;

				std::ifstream wptsfin;
				std::string words = XorStringA("");
				std::string path = GetDirectoryFile(XorStringA("grind\\"));
				if (current_item != NULL)
				{
					wptsfin.open(path + current_item, std::ifstream::in);
					while (wptsfin.good())
					{
						wptsfin >> ptX >> words >> ptY >> words >> ptZ >> words >> type >> words >> delay;
						g_v_waypoints_file.emplace_back(ptX, ptY, ptZ, type, delay);
					}
					wptsfin.close();

					LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>WayPoints <PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
				}
				else
				{
					LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>WayPoints <PAOldColor> <PAColor0xFF0099FF>Failed to Load<PAOldColor>')"));
				}
			}
			//custom profiles loader ends
			ImGui::Combo(XorStringA("Grinder Type"), &BDO::Grinder::grinderType, BDO::Grinder::grinderTypeList, IM_ARRAYSIZE(BDO::Grinder::grinderTypeList));
			ImGui::SameLine(252.0f);
			if (ImGui::Button(XorStringA("Activate"), ImVec2(240, 20)))
			{
				BDO::Grinder::activate = true;
				if (BDO::Grinder::grinderType == 0)
					std::thread(GrinderWalk).detach();
				else
					std::thread(GrinderTeleport).detach();
			}
			ImGui::PopItemWidth();

			ImGui::Checkbox(XorStringA("Activation"), &BDO::Grinder::activate);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox(XorStringA("Pause"), &BDO::Grinder::pause);
			ImGui::SameLine(300.0f);
			ImGui::Checkbox(XorStringA("Reload Check"), &BDO::Grinder::reloadCheck);

			ImGui::Checkbox(XorStringA("Animation Lock"), &BDO::Grinder::animationLock);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox(XorStringA("Player Detection"), &BDO::Grinder::playerDetection);
			ImGui::SameLine(300.0f);
			ImGui::Checkbox(XorStringA("Monsters Detection"), &BDO::Grinder::monsterDetection);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.75f);
			ImGui::SliderFloat(XorStringA("Monsters Range"), &BDO::Grinder::monsterRange, 300.0f, 700.0f);
			ImGui::PopItemWidth();
			ImGui::Checkbox(XorStringA("pet loot"), &BDO::Grinder::petLoot);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox(XorStringA("Teleport To Loot"), &BDO::Grinder::teleportLooting);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.75f);
			ImGui::SliderFloat(XorStringA("Loot Range"), &BDO::Grinder::teleportLootingRange, 250.0f, 600.0f);
			ImGui::PopItemWidth();
		}
		if (ImGui::CollapsingHeader(XorStringA("Manufacture")))
		{
			ImGui::Checkbox(XorStringA("Activation"), &BDO::Manufacture::activation);
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Load File"), ImVec2(100, 20)))
			{
				//find items that can be proecssed
				g_v_manufacture_file.clear();
				uint16_t itemId;
				std::string itemName, procType;
				std::string endReading = XorStringA("<end>");
				std::string words = "";
				std::ifstream manufacturefin;
				manufacturefin.open(GetDirectoryFile(XorStringA("Manufacture.ini")), std::ifstream::in);
				std::getline(manufacturefin, itemName);
				while (manufacturefin.good())
				{
					std::getline(manufacturefin, itemName, ',');
					if (itemName.find(endReading) != std::string::npos)
						break;
					manufacturefin >> itemId >> words >> procType;
					manufacturefin.ignore(1); //ignore newline
					if (procType == XorStringA("Shake"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("SHAKE"), BDOEnums::Shake, itemId);
					else if (procType == XorStringA("Grind"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("GRIND"), BDOEnums::Grind, itemId);
					else if (procType == XorStringA("Chop"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("FIREWOOD"), BDOEnums::Chop, itemId);
					else if (procType == XorStringA("Dry"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("DRY"), BDOEnums::Dry, itemId);
					else if (procType == XorStringA("Filter"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("THINNING"), BDOEnums::Filter, itemId);
					else if (procType == XorStringA("Heat"))
						g_v_manufacture_file.emplace_back(itemName, XorStringA("HEAT"), BDOEnums::Heat, itemId);
				}
				manufacturefin.close();

				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Manufacture Filter <PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
			}
			if (ImGui::Button(XorStringA("push"), ImVec2(100, 20)))
			{
				LuaExecutor(XorStringA("inventoryToWarehouse(2, 1)"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("pull"), ImVec2(100, 20)))
			{
				LuaExecutor(XorStringA("warehouseToInventory(2, 1)"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("debug command"), ImVec2(100, 20)))
			{
				LuaExecutor(XorStringA("inventoryGrind(2)"));
			}
		}
		if (ImGui::CollapsingHeader(XorStringA("Fishing")))
		{
			ImGui::Checkbox(XorStringA("Activation"), &BDO::Fishing::activation);
			ImGui::SameLine(175.0f);
			ImGui::Checkbox(XorStringA("ShutDown On Full"), &BDO::Fishing::shutdownOnFull);
			ImGui::SameLine(350.0f);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.50f);
			ImGui::SliderInt(XorStringA("Free Slots"), &BDO::Fishing::freeSlots, 0, 3);
			ImGui::PopItemWidth();
			ImGui::Checkbox(XorStringA("Automate Fishing"), &BDO::Fishing::automateFishing);
			ImGui::SameLine(175.0f);
			ImGui::Checkbox(XorStringA("Lock Position"), &BDO::Fishing::lockPosX);
			ImGui::Combo(XorStringA("Predict Grade"), &BDO::Fishing::fishGrade, BDO::Fishing::fishGradeList, IM_ARRAYSIZE(BDO::Fishing::fishGradeList));
			ImGui::SameLine(350.0f);
			ImGui::Text(XorStringA("Current Fish Grade: %d"), BDO::Fishing::currentGrade);
		}
		if (ImGui::CollapsingHeader(XorStringA("Vehicle")))
		{
			ImGui::Checkbox(XorStringA("Activation"), &BDO::Vehicle::activation);
			ImGui::SameLine();
			ImGui::Checkbox(XorStringA("Overwrite"), &BDO::Character::playerDetectorOverwrite);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::SliderInt(XorStringA("Vehicle Acceleration"), &BDO::Vehicle::acceleration, 100, 300);
			ImGui::SliderInt(XorStringA("Vehicle Speed"), &BDO::Vehicle::speed, 100, 300);
			ImGui::SliderInt(XorStringA("Vehicle Turn"), &BDO::Vehicle::turn, 100, 500);
			ImGui::SliderInt(XorStringA("Vehicle Brake"), &BDO::Vehicle::brake, 100, 500);
			ImGui::PopItemWidth();
		}
		if (ImGui::CollapsingHeader(XorStringA("Utilities")))
		{
			if (ImGui::Button(XorStringA("Escape"), ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("callRescue()"));
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Perm. COMPASS"), ImVec2(120, 20)))
			{
				PatchNavigation();
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Toss Junk Items"), ImVec2(120, 20)))
			{
				TossAwayJunkItems();
			}
			if (ImGui::Button(XorStringA("debugTest"), ImVec2(120, 20)))
			{
				//std::string testing((char*)((g_kuip_NPCName)));
				//cLog("NPC Name: %s", testing.c_str());
				//std::thread(DebugTest).detach();
				DebugTest();
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("print ani name"), ImVec2(120, 20)))
			{
				PrintAnimationIDandNames();
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("Test Lua Hook"), ImVec2(120, 20)))
			{
				//LuaPipe("sumtotalWeight", false);
				g_b_lua_pipe_call = true;
				cLog(XorStringA("hp: %d"), BDOLuaVariables::currenthp);
			}
			ImGui::SameLine();
			ImGui::Checkbox(XorStringA("debug"), &BDO::g_bDebug);
			if (ImGui::Button(XorStringA("x+5"), ImVec2(120, 20)))
			{
				LocalPlayer::LocalPlayerContext::GetInstance().Teleportation(5.0f, 0.0f, 0.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("x-5"), ImVec2(120, 20)))
			{
				LocalPlayer::LocalPlayerContext::GetInstance().Teleportation(-5.0f, 0.0f, 0.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("z+5"), ImVec2(120, 20)))
			{
				LocalPlayer::LocalPlayerContext::GetInstance().Teleportation(0.0f, 0.0f, 5.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button(XorStringA("z-5"), ImVec2(120, 20)))
			{
				LocalPlayer::LocalPlayerContext::GetInstance().Teleportation(0.0f, 0.0f, -5.0f, 1, 1000);
			}
		}
	}
	ImGui::End();
}
void GetFPS(bool* panel_open)
{
	static int count = 0;
	static auto last = std::chrono::high_resolution_clock::now();
	auto now = std::chrono::high_resolution_clock::now();
	static int fps = 0;

	count++;

	if (std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count() > 1000) {
		fps = count;
		count = 0;
		last = now;
	}

	if (panel_open)
	{
		rDrawText(ImGui::GetFont(), std::to_string(fps), ImVec2(25.0f, 112.5f), 25, ImColor(255, 255, 255, 255), 1);
	}
}
void ESPMenu(bool* panel_open) //extrasensory perception aka ESP
{
	//ImGui::SetNextWindowSize(ImVec2(340, 180));
	if (ImGui::Begin(XorStringA("ESP"), panel_open, ImGuiWindowFlags_AlwaysAutoResize))
	{
		ImGui::Combo(XorStringA("ESP Target"), &BDO::ESP::targetType, BDO::ESP::targetTypeList, IM_ARRAYSIZE(BDO::ESP::targetTypeList));
		if (ImGui::Button(XorStringA("Load ESP Targets File"), ImVec2(300, 20)))
		{
			g_um_esp_actor_id.clear();
			std::string l_s_target_name;
			uint32_t l_ui32_target_id;

			std::string l_s_end_of_reading = XorStringA("<end>");
			std::ifstream espfin;
			espfin.open(GetDirectoryFile(XorStringA("ESPTargets.ini")), std::ifstream::in);
			while (espfin.good())
			{
				std::getline(espfin, l_s_target_name, ',');
				if (l_s_target_name.find(l_s_end_of_reading) != std::string::npos)
					break;
				espfin >> l_ui32_target_id;
				espfin.ignore(1); //ignore newline
				g_um_esp_actor_id.emplace(l_s_target_name, l_ui32_target_id);
			}
			espfin.close();

			LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>ESP Targets <PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
		}
		ImGui::Checkbox(XorStringA("ESP"), &BDO::ESP::drawESP);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox(XorStringA("WorldMap"), &BDO::ESP::drawWorldMap);

		ImGui::Checkbox(XorStringA("Line"), &BDO::ESP::drawESP_line);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox(XorStringA("Circle"), &BDO::ESP::drawESP_circle);
		ImGui::SameLine(200.0f);
		ImGui::Checkbox(XorStringA("Name"), &BDO::ESP::drawESP_name);

		ImGui::Checkbox(XorStringA("ID"), &BDO::ESP::drawESP_id);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox(XorStringA("Level"), &BDO::ESP::drawESP_level);
		ImGui::SameLine(200.0f);
		ImGui::Checkbox(XorStringA("Distance"), &BDO::ESP::drawESP_distance);
	}
	ImGui::End();
}
void ScreenshotUitility(bool* panel_open)
{
	/*
	static int OCameraRoll = 0x58; //useless
	static int OCameraPitch = 0x5C;
	static int OCameraYaw = 0x68;
	*/
	uint64_t camAddress = *((uint64_t*)(*((uint64_t*)(g_kuip_Base)) + 0x30));

	if (BDO::Camera::activation)
	{
		//camera
		if (BDO::Camera::advanced)
		{
			*((float*)(camAddress + 0x5C)) = BDO::Camera::view1;
			*((float*)(camAddress + 0x68)) = BDO::Camera::view2;
		}
		else
		{
			BDO::Camera::view1 = *((float*)(camAddress + 0x5C));
			BDO::Camera::view2 = *((float*)(camAddress + 0x68));
		}
		*((float*)(camAddress + 0x70)) = BDO::Camera::view3;
		*((float*)(camAddress + 0x74)) = BDO::Camera::view4;

		//screenshot
		*((float*)(camAddress + 0xA4)) = BDO::Camera::screenshot1;
		*((float*)(camAddress + 0xA8)) = BDO::Camera::screenshot2;
		*((float*)(camAddress + 0xAC)) = BDO::Camera::screenshot3;
		*((float*)(camAddress + 0xC8)) = BDO::Camera::screenshot4;
		*((float*)(camAddress + 0xD0)) = BDO::Camera::screenshot5;
	}
	else
	{
		//camera
		BDO::Camera::view1 = *((float*)(camAddress + 0x5C));
		BDO::Camera::view2 = *((float*)(camAddress + 0x68));
		BDO::Camera::view3 = *((float*)(camAddress + 0x70));
		BDO::Camera::view4 = *((float*)(camAddress + 0x74));

		//screenshot
		BDO::Camera::screenshot1 = *((float*)(camAddress + 0xA4));
		BDO::Camera::screenshot2 = *((float*)(camAddress + 0xA8));
		BDO::Camera::screenshot3 = *((float*)(camAddress + 0xAC));
		BDO::Camera::screenshot4 = *((float*)(camAddress + 0xC8));
		BDO::Camera::screenshot5 = *((float*)(camAddress + 0xD0));
	}

	//ImGui::SetNextWindowSize(ImVec2(250, 275));
	if (ImGui::Begin(XorStringA("Screenshot Uitility"), panel_open, ImGuiWindowFlags_AlwaysAutoResize))
	{
		ImGui::Checkbox(XorStringA("Activation"), &BDO::Camera::activation);
		ImGui::SameLine(0, 38.5f);
		ImGui::Checkbox(XorStringA("Advanced"), &BDO::Camera::advanced);
		ImGui::PushItemWidth(150);
		ImGui::SliderFloat(XorStringA("Cam 1"), &BDO::Camera::view1, -2, 2);
		ImGui::SliderFloat(XorStringA("Cam 2"), &BDO::Camera::view2, -3.5f, 3.5f);
		ImGui::SliderFloat(XorStringA("Cam 3"), &BDO::Camera::view3, -1, 1);
		ImGui::SliderFloat(XorStringA("Cam 4"), &BDO::Camera::view4, -1, 1);
		ImGui::SliderFloat(XorStringA("Screenshot 1"), &BDO::Camera::screenshot1, -40, 40);
		ImGui::SliderFloat(XorStringA("Screenshot 2"), &BDO::Camera::screenshot2, -40, 40);
		ImGui::SliderFloat(XorStringA("Screenshot 3"), &BDO::Camera::screenshot3, -40, 40);
		ImGui::SliderFloat(XorStringA("Screenshot 4"), &BDO::Camera::screenshot4, -40, 40);
		ImGui::SliderFloat(XorStringA("Screenshot 5"), &BDO::Camera::screenshot5, -40, 40);
		ImGui::PopItemWidth();
	}
	ImGui::End();
}
void ShowDebugMenu(bool* panel_open)
{
	//ImGui::SetNextWindowSize(ImVec2(225, 180)); dont need this if use auto resize
	if (ImGui::Begin(XorStringA("Debugging"), panel_open, ImGuiWindowFlags_AlwaysAutoResize))
	{
		//save system variables
		if (ImGui::Button(XorStringA("Save System Variables"), ImVec2(200, 20)))
		{
			uint64_t systemVariables_name = ((uint64_t)g_kuip_SystemVariables + 0x18);
			uint64_t systemVariables_bool = ((uint64_t)g_kuip_SystemVariables + 0x08);
			uint64_t systemVariables_FloatInt = ((uint64_t)g_kuip_SystemVariables + 0x10);

			std::ofstream fout;
			fout.open(GetDirectoryFile(XorStringA("SystemVariables.ini")), std::ios::trunc);
			for (uint16_t counter = 0; counter < 600; counter++)
			{
				std::string& l_s_name = std::string((const char*)(*((uint64_t*)(systemVariables_name))));
				bool& l_b_is_enabled = *((bool*)(systemVariables_bool));
				int& l_i32_interger_value = *((int*)(systemVariables_FloatInt));
				float& l_f_float_value = *((float*)(systemVariables_FloatInt));

				if (l_i32_interger_value != l_i32_interger_value) //check for Nan
					l_i32_interger_value = 0;
				else if (l_f_float_value != l_f_float_value) //check for Nan
					l_f_float_value = 0;

				fout << XorStringA("Name: ") << l_s_name << XorStringA(" Enabled: ") << l_b_is_enabled << XorStringA(" ValueInt: ") << l_i32_interger_value << XorStringA(" ValueFloat: ") << l_f_float_value << '\n';
				if (l_s_name == XorStringA("_use_object_loadrange"))
					break;

				systemVariables_name += 0x20;
				systemVariables_bool += 0x20;
				systemVariables_FloatInt += 0x20;
			}
			fout.close();
		}
		//load system variables
		if (ImGui::Button(XorStringA("Load System Variables"), ImVec2(200, 20)))
		{
			std::string l_s_name;
			bool l_b_is_enabled;
			int l_i32_interger_value;
			float l_f_float_value;

			uint64_t systemVariables_bool = ((uint64_t)g_kuip_SystemVariables + 0x08);
			uint64_t systemVariables_FloatInt = ((uint64_t)g_kuip_SystemVariables + 0x10);

			std::ifstream fin;
			std::string words = "";
			fin.open(GetDirectoryFile(XorStringA("SystemVariables.ini")), std::ifstream::in);
			for (uint16_t counter = 0; counter < 600; counter++)
			{
				fin >> words >> l_s_name >> words >> l_b_is_enabled >> words >> l_i32_interger_value >> words >> l_f_float_value;
				*((bool*)(systemVariables_bool)) = l_b_is_enabled;
				*((int*)(systemVariables_FloatInt)) = l_i32_interger_value;
				*((float*)(systemVariables_FloatInt)) = l_f_float_value;
				if (l_s_name == XorStringA("_use_object_loadrange"))
				{
					break;
				}
				systemVariables_bool += 0x20;
				systemVariables_FloatInt += 0x20;
			}
			fin.close();
		}
		//dump inventory
		if (ImGui::Button(XorStringA("Dump Inventory"), ImVec2(200, 20)))
		{
			int temp = DumpInventory(1, NULL);
		}
		//dump warehouse
		if (ImGui::Button(XorStringA("Dump Warehouse"), ImVec2(200, 20)))
		{
			int temp = DumpWarehouse(1, NULL);
		}
		//check for multi-threading
		if (ImGui::Button(XorStringA("Get CPU ID"), ImVec2(200, 20)))
		{
			uint32_t cpuid_regs[BDOEnums::CPUID_ARRAY_SIZE];
			__cpuid((int32_t*)cpuid_regs, 1);

			cLog(XorStringA("%d"), cpuid_regs[BDOEnums::CPUID_EBX] >> 24);
		}
		//unhook
		if (ImGui::Button(XorStringA("UNHOOK"), ImVec2(200, 20)))
		{
			if (BDO::g_bShowConsole) //prevent crash
				BDO::g_bShowConsole = false;

			//Create a thread to unhook or it will unhook the game instead
			CreateThread(0, 0, (LPTHREAD_START_ROUTINE)UnhookMe, NULL, 0, 0);
		}
	}
	ImGui::End();
}

void DrawMainPanel()
{
	static bool l_b_show_menuWindow = false;
	static bool l_b_show_fps = false;
	static bool l_b_show_esp = false;
	static bool l_b_camera_screenshot = false;
	static bool l_b_show_debug_menu = false;
	static bool l_b_show_menu = true;

	//---------------------------------------------------
	if (l_b_show_menuWindow)
		ShowMainMenu(&l_b_show_menuWindow);
	//---------------------------------------------------
	if (l_b_show_fps)
		GetFPS(&l_b_show_fps);
	//---------------------------------------------------
	if (l_b_show_esp)
		ESPMenu(&l_b_show_esp);
	//---------------------------------------------------
	if (l_b_camera_screenshot)
		ScreenshotUitility(&l_b_camera_screenshot);
	//---------------------------------------------------
	if (l_b_show_debug_menu)
		ShowDebugMenu(&l_b_show_debug_menu);
	//---------------------------------------------------
	if (BDO::g_bShowConsole)
	{
		if (!AllocConsole())
		{
			AllocConsole();
			freopen(XorStringA("CONOUT$"), XorStringA("w"), stdout);
		}
	}
	else
		FreeConsole();
	//---------------------------------------------------

	const float DISTANCE = 10.0f;
	static int corner = 2; //botoom left
	ImVec2 window_pos = ImVec2((corner & 1) ? ImGui::GetIO().DisplaySize.x - DISTANCE : DISTANCE, (corner & 2) ? ImGui::GetIO().DisplaySize.y - DISTANCE : DISTANCE);
	ImVec2 window_pos_pivot = ImVec2((corner & 1) ? 1.0f : 0.0f, (corner & 2) ? 1.0f : 0.0f);
	ImGui::SetNextWindowPos(window_pos, ImGuiCond_Always, window_pos_pivot);
	ImGui::SetNextWindowBgAlpha(0.75f); // Transparent background	
	if (ImGui::Begin(XorStringA("CRIMSON DESERT"), &l_b_show_menu, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_AlwaysAutoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoNav))
	{
		if (ImGui::BeginMenu(XorStringA("CRIMSON DESERT")))
		{
			ImGui::MenuItem(XorStringA("Main Menu"), NULL, &l_b_show_menuWindow);
			ImGui::MenuItem(XorStringA("Show FPS"), NULL, &l_b_show_fps);
			ImGui::MenuItem(XorStringA("Show ESP"), NULL, &l_b_show_esp);
			ImGui::MenuItem(XorStringA("Screenshot"), NULL, &l_b_camera_screenshot);
			ImGui::MenuItem(XorStringA("Debug window"), NULL, &l_b_show_debug_menu);
			ImGui::MenuItem(XorStringA("Log Console"), NULL, &BDO::g_bShowConsole);
			ImGui::EndMenu();
		}
		ImGui::End();
	}
}

#pragma region drawing stuff
void BeginScene()
{
	ImGui_ImplDX11_NewFrame(); //must call this BEFORE calling ANY renders

	ImGui::PushStyleColor(ImGuiCol_WindowBg, ImVec4(0.0f, 0.0f, 0.0f, 0.0f));
	ImGuiStyle& style = ImGui::GetStyle();
	ImVec4* colors = style.Colors;

	style.WindowBorderSize = 0.0f; //create an overlay with no border
	ImGui::Begin(XorStringA("BackBuffer"), reinterpret_cast<bool*>(true), ImVec2(0, 0), 0.0f, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoInputs);

	ImGui::SetWindowPos(ImVec2(0, 0), ImGuiSetCond_Always);
	ImGui::SetWindowSize(ImVec2(ImGui::GetIO().DisplaySize.x, ImGui::GetIO().DisplaySize.y), ImGuiSetCond_Always);

	style.Colors[ImGuiCol_Text] = ImVec4(0.860f, 0.930f, 0.890f, 0.78f);
	style.Colors[ImGuiCol_TextDisabled] = ImVec4(0.860f, 0.930f, 0.890f, 0.28f);
	style.Colors[ImGuiCol_WindowBg] = ImVec4(0.13f, 0.14f, 0.17f, 1.00f);
	style.Colors[ImGuiCol_ChildWindowBg] = ImVec4(0.200f, 0.220f, 0.270f, 0.58f);
	style.Colors[ImGuiCol_PopupBg] = ImVec4(0.200f, 0.220f, 0.270f, 0.9f);
	style.Colors[ImGuiCol_Border] = ImVec4(0.31f, 0.31f, 1.00f, 0.00f);
	style.Colors[ImGuiCol_BorderShadow] = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
	style.Colors[ImGuiCol_FrameBg] = ImVec4(0.200f, 0.220f, 0.270f, 1.00f);
	style.Colors[ImGuiCol_FrameBgHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.78f);
	style.Colors[ImGuiCol_FrameBgActive] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_TitleBg] = ImVec4(0.232f, 0.201f, 0.271f, 1.00f);
	style.Colors[ImGuiCol_TitleBgActive] = ImVec4(0.502f, 0.075f, 0.256f, 1.00f);
	style.Colors[ImGuiCol_TitleBgCollapsed] = ImVec4(0.200f, 0.220f, 0.270f, 0.75f);
	style.Colors[ImGuiCol_MenuBarBg] = ImVec4(0.200f, 0.220f, 0.270f, 0.47f);
	style.Colors[ImGuiCol_ScrollbarBg] = ImVec4(0.200f, 0.220f, 0.270f, 1.00f);
	style.Colors[ImGuiCol_ScrollbarGrab] = ImVec4(0.09f, 0.15f, 0.16f, 1.00f);
	style.Colors[ImGuiCol_ScrollbarGrabHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.78f);
	style.Colors[ImGuiCol_ScrollbarGrabActive] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_CheckMark] = ImVec4(0.71f, 0.22f, 0.27f, 1.00f);
	style.Colors[ImGuiCol_SliderGrab] = ImVec4(0.47f, 0.77f, 0.83f, 0.14f);
	style.Colors[ImGuiCol_SliderGrabActive] = ImVec4(0.71f, 0.22f, 0.27f, 1.00f);
	style.Colors[ImGuiCol_Button] = ImVec4(0.47f, 0.77f, 0.83f, 0.14f);
	style.Colors[ImGuiCol_ButtonHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.86f);
	style.Colors[ImGuiCol_ButtonActive] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_Header] = ImVec4(0.455f, 0.198f, 0.301f, 0.76f);
	style.Colors[ImGuiCol_HeaderHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.86f);
	style.Colors[ImGuiCol_HeaderActive] = ImVec4(0.502f, 0.075f, 0.256f, 1.00f);
	style.Colors[ImGuiCol_Column] = ImVec4(0.14f, 0.16f, 0.19f, 1.00f);
	style.Colors[ImGuiCol_ColumnHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.78f);
	style.Colors[ImGuiCol_ColumnActive] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_ResizeGrip] = ImVec4(0.47f, 0.77f, 0.83f, 0.04f);
	style.Colors[ImGuiCol_ResizeGripHovered] = ImVec4(0.455f, 0.198f, 0.301f, 0.78f);
	style.Colors[ImGuiCol_ResizeGripActive] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_PlotLines] = ImVec4(0.860f, 0.930f, 0.890f, 0.63f);
	style.Colors[ImGuiCol_PlotLinesHovered] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_PlotHistogram] = ImVec4(0.860f, 0.930f, 0.890f, 0.63f);
	style.Colors[ImGuiCol_PlotHistogramHovered] = ImVec4(0.455f, 0.198f, 0.301f, 1.00f);
	style.Colors[ImGuiCol_TextSelectedBg] = ImVec4(0.455f, 0.198f, 0.301f, 0.43f);
	style.Colors[ImGuiCol_ModalWindowDarkening] = ImVec4(0.200f, 0.220f, 0.270f, 0.73f);

	//style.WindowPadding = ImVec2(6, 4);
	style.WindowRounding = 0.0f;
	//style.FramePadding = ImVec2(5, 1);
	//style.FrameRounding = 3.0f;
	//style.ItemSpacing = ImVec2(7, 1);
	//style.ItemInnerSpacing = ImVec2(1, 1);
	style.TouchExtraPadding = ImVec2(0, 0);
	//style.IndentSpacing = 6.0f;
	//style.ScrollbarSize = 12.0f;
	//style.ScrollbarRounding = 16.0f;
	//style.GrabMinSize = 20.0f;
	//style.GrabRounding = 2.0f;

	style.WindowTitleAlign.x = 0.50f;

	style.Colors[ImGuiCol_Border] = ImVec4(0.539f, 0.479f, 0.255f, 0.162f);
	style.FrameBorderSize = 0.0f;
	style.WindowBorderSize = 1.0f;
}

void RenderScene()
{
	DrawMainPanel();

	BaseFunctions();
}

void EndScene()
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();
	window->DrawList->PushClipRectFullScreen();

	ImGui::End();
	ImGui::PopStyleColor();

	ImGui::Render(); //must call this AFTER calling ALL renders
}
#pragma endregion