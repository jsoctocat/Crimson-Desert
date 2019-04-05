#pragma warning(disable: 4244) // float to int, possible loss of data
#pragma warning(disable: 4267) // size_t to const int, possible loss of data

#include "ImGui/imgui.h"
#include "ImGui/imgui_impl_dx11.h"
#include "ImGui/imgui_internal.h" //draw line and stuff, math operator

#include <string>
#include <vector>
#include <cmath>
#include <chrono> //draw fps
#include <thread> //multithreading
#include <sstream>
#include <unordered_map>

#include <algorithm>
#include <random>

#include "Foundation/Headers.h" //unhook
#include "Foundation/Addresses.h"
#include "Foundation/Offsets.h"
#include "Foundation/FunctionCalls.h"
#include "Foundation/GlobalVariables.h"

#include "Utilities/XorString.h"
#include "Utilities/Lua.h"
#include "Utilities/Dump_Functions.h"

#include "Utilities/Vectors.h"

#include "intrin.h" //check if multithreading

#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;

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
class Market
{
public:
	std::string m_s_name;
	uint32_t m_ui32_itemid;

	Market(std::string name, uint32_t itemid)
		: m_s_name(name), m_ui32_itemid(itemid) {}
};
std::vector<Market> g_v_market_items;

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
inline void rDrawLine(Vector2 from, Vector2 to, uint32_t color, float thickness)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	window->DrawList->AddLine(ImVec2(from.x, from.y), ImVec2(to.x, to.y), ImGui::GetColorU32(color), thickness);
}

inline void rDrawCircle(Vector2 position, float radius, uint32_t color, float thickness, bool filled)
{
	ImGuiWindow* window = ImGui::GetCurrentWindow();

	if (!filled)
		window->DrawList->AddCircle(ImVec2(position.x, position.y), radius, ImGui::GetColorU32(color), 12, thickness);
	else
		window->DrawList->AddCircleFilled(ImVec2(position.x, position.y), radius, ImGui::GetColorU32(color), 12);
}

inline float rDrawText(ImFont* pFont, const std::string& text, const ImVec2& pos, float size, uint32_t color, bool center)
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
			window->DrawList->AddText(pFont, size, ImVec2((pos.x - textSize.x / 2.0f) + 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x - textSize.x / 2.0f) - 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x - textSize.x / 2.0f) + 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x - textSize.x / 2.0f) - 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());

			window->DrawList->AddText(pFont, size, ImVec2(pos.x - textSize.x / 2.0f, pos.y + textSize.y * i), ImGui::GetColorU32(color), line.c_str());
		}
		else
		{
			window->DrawList->AddText(pFont, size, ImVec2((pos.x) + 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x) - 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x) + 1, (pos.y + textSize.y * i) - 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());
			window->DrawList->AddText(pFont, size, ImVec2((pos.x) - 1, (pos.y + textSize.y * i) + 1), ImGui::GetColorU32(ImVec4(0, 0, 0, a / 255)), line.c_str());

			window->DrawList->AddText(pFont, size, ImVec2(pos.x, pos.y + textSize.y * i), ImGui::GetColorU32(color), line.c_str());
		}

		y = pos.y + textSize.y * (i + 1);
		i++;
	}

	return y;
}

inline void rDrawSquare(Vector2 center, float size, uint32_t color, float thickness, bool filled = false)
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

inline void rDrawWorldCircle(std::vector<Vector2> pts, float radius, uint32_t color, float thickness, bool filled = false)
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

inline void rDrawWorldSquare(std::vector<Vector2> pts, float size, uint32_t color, float thickness, bool filled = false)
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

inline void rDrawWorldBox(std::vector<Vector2> pts, float size, uint32_t color, float thickness, float height = -1)
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

//only usable once per scope
inline bool TimerFunction(int64_t delay)
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

void InputEvents(bool activate, uint8_t Vkey_Code1, uint8_t Vkey_Code2, uint8_t Vkey_Code3)
{
	uint64_t m_ui64_inputListenerAddress = *((uint64_t*)(*((uint64_t*)(g_kuip_Base)) + 0x08));
	//define foreground patch
	BYTE* m_bp_foregroundCheck = reinterpret_cast<BYTE*>(g_kuip_GetKeyInputStatePressed + 0x24);
	BYTE m_b_patchForegroundCheck[2] = { 0xEB,0x40 };
	//focus window patch
	BYTE* m_bp_checkFocus = reinterpret_cast<BYTE*>(g_kuip_PatchWindowFocus);
	BYTE m_b_patchFocus[3] = { 0x0F, 0x95, 0xC0 };

	static bool l_b_firsttime;
	//patching
	if (!l_b_firsttime)
	{
		memcpy(m_bp_foregroundCheck, m_b_patchForegroundCheck, sizeof(m_b_patchForegroundCheck));
		memcpy(m_bp_checkFocus, m_b_patchFocus, sizeof(m_b_patchFocus));
		l_b_firsttime = true;
	}

	uint64_t mainWindowBaseAddress = *((uint64_t*)(g_kuip_MainWindowBase));
	uint8_t hasFocus = ((uint64_t)(mainWindowBaseAddress + 0x1478));
	if (hasFocus == 0)
	{
		hasFocus = 1;
	}

	if (activate)
	{
		*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code1 * 4))) = 3;
		if (Vkey_Code2 != 0)
			*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code2 * 4))) = 2;
		if (Vkey_Code3 != 0)
			*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code3 * 4))) = 1;
	}
	if (TimerFunction(10))
	{
		*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code1 * 4))) = 0;
		if (Vkey_Code2 != 0)
			*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code2 * 4))) = 0;
		if (Vkey_Code3 != 0)
			*((uint64_t*)((m_ui64_inputListenerAddress + 0x840) + (Vkey_Code3 * 4))) = 0;
	}
}
class PatchNavigation
{
	uint64_t RegionList_FirstEntry = *((uint64_t*)(g_kuip_RegionInfoManager + 0x10));
	uint64_t RegionList_ListStart = *((uint64_t*)(g_kuip_RegionInfoManager + 0x20));
	uint64_t RegionList_ListEnd = *((uint64_t*)(g_kuip_RegionInfoManager + 0x28));

	uint32_t maxSize = ((RegionList_ListEnd - RegionList_ListStart) / 0x08);

	uint64_t firstNode = RegionList_FirstEntry;
	uint64_t curNode = firstNode;
public:
	PatchNavigation()
	{
		std::vector<uint64_t> l_v_region_info;
		l_v_region_info.reserve(maxSize);

		for (uint32_t count = 0; count < maxSize; count++)
		{
			uint64_t NextNodePtr = *((uint64_t*)(curNode));
			uint64_t PreviousNodePtr = *((uint64_t*)(NextNodePtr + 0x08));
			//cLog("printing %d: %x, %x, %x", count, curNode, NextNodePtr, PreviousNodePtr);

			if (PreviousNodePtr == curNode && NextNodePtr != firstNode)
			{
				uint64_t RegionDataPtr = *((uint64_t*)(curNode + 0x18));
				l_v_region_info.emplace_back(((uint64_t)(RegionDataPtr)));
				//cLog("printing %d: %x, %x", count, RegionDataPtr, regionInfo[count].address);

				curNode = NextNodePtr;
				//cLog("printing %d: %x, %x", count, curNode, NextNodePtr);
			}
			else
			{
				break;
			}

		}
		//RegionData.cs + Navigation.cs
		for (int count = 1; count < l_v_region_info.size(); count++)
		{
			uint64_t& addressplaceholder = l_v_region_info[count];
			//cLog("printing %d: %x, %x", count, addressplaceholder, regionInfo[count].address);
			//cLog("printing %d: passed", count);
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

			uint8_t& isAccessableArea = *((uint8_t*)(addressplaceholder + g_ki32_IsAccessableArea));
			if (!isAccessableArea)
			{
				//cLog("isAccessableArea trigger at %d", count);
				isAccessableArea = 1;
			}
		}
	}
};
class Entity
{
	uint64_t m_ui64_local_player_address;
	uint8_t m_ui8_maxinventory_slots;
	uint64_t m_ui64_character_control_address;
	uint64_t m_ui64_character_scene_address;
	uint64_t m_ui64_teleport_1;
	uint64_t m_ui64_teleport_2;
	uint64_t m_ui64_teleport_3;
	uint64_t m_ui64_current_mainhand_address;
	uint16_t m_ui16_current_mainhand;
	uint8_t m_ui8_free_inventory_slots;
	uint16_t m_ui16_get_current_mainhand_durability;
	uint8_t m_ui8_fish_grade;
	//uint8_t isFishing = *((uint8_t*)(localPlayer + g_ki32_IsFishing)); //hella buggy, switched over to fetch/check animation names
	uint16_t m_i16_fishing_equipments[22] = { /*fishing rods ->*/17669, 17596, 16152, 17613, 17612, 17592, 17591, 16153, 16162, 16164, 16163, 16166, 16165, 16151, 16147, 16141, 16150, 16441, /*harpoon ->*/16154, 16155, 16478, 29229 };

public:
	Entity()
	{
		m_ui64_local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

		m_ui8_maxinventory_slots = *((uint8_t*)(m_ui64_local_player_address + g_ki32_MaxInventorySlots));

		m_ui64_character_control_address = *((uint64_t*)(m_ui64_local_player_address + g_ki32_CharacterController));
		m_ui64_character_scene_address = *((uint64_t*)(m_ui64_character_control_address + g_ki32_CharacterScene));

		m_ui64_teleport_1 = *((uint64_t*)(m_ui64_character_scene_address + g_ki32_teleport_1));
		m_ui64_teleport_2 = *((uint64_t*)(m_ui64_teleport_1 + g_ki32_teleport_2));
		m_ui64_teleport_3 = *((uint64_t*)(m_ui64_teleport_2 + g_ki32_teleport_3));

		m_ui64_current_mainhand_address = *((uint64_t*)(m_ui64_local_player_address + g_ki32_EquipmentStart));
		m_ui16_current_mainhand = *((uint16_t*)(m_ui64_current_mainhand_address + g_ki32_ItemIndex));
		m_ui8_free_inventory_slots = *((uint8_t*)(m_ui64_local_player_address + g_ki32_FreeInventorySlots));
		m_ui16_get_current_mainhand_durability = *((uint16_t*)(m_ui64_local_player_address + g_ki32_MaindHandDurab));
		m_ui8_fish_grade = *((uint8_t*)(m_ui64_local_player_address + g_ki32_FishGrade));
		//isFishing = *((uint8_t*)(localPlayer + g_ki32_IsFishing)); //hella buggy, switched over to fetch/check animation names
	}
	int AnimationCheck(int check, std::string name)
	{
		bool passed_check = false;
		uint64_t currentAnimationPtr = *((uint64_t*)(m_ui64_character_control_address + 0x38));
		uint64_t currentAnimation = *((uint64_t*)(currentAnimationPtr + 0x20));
		uint32_t animationId = *((uint32_t*)(currentAnimation));

		uint64_t stringTable_address = *((uint64_t*)(g_kuip_StringTable_ASCII));
		uint64_t stringTable = *((uint64_t*)(stringTable_address));

		uint64_t NameEntryAddy;

		NameEntryAddy = (stringTable + (0x10 * animationId));
		std::string animationName((char*)(*((uint64_t*)(NameEntryAddy))));

		switch (check)
		{
		case 0: //general checking
			if (animationName.find("Skill") != std::string::npos || animationName.find("skill") != std::string::npos
				|| animationName.find("ATTACK") != std::string::npos || animationName.find("Attack") != std::string::npos
				|| animationName.find("RIFLE") != std::string::npos || animationName.find("ITEM_PICK") != std::string::npos
				|| (animationName.find("FISHING") != std::string::npos && animationName != "FISHING_WAIT" && animationName != "FISHING_HOOK_SUCCESS")  /*check if contains fishing but exclude waiting and success*/
				|| (animationName.find("HARPOON") != std::string::npos && animationName != "HARPOON_AIM_WAIT" && animationName != "HARPOON_AIM_MINIGAME_SUCCESS")) /*check if contains fishing but exclude waiting and success*/
				passed_check = true;
			break;
		case 1: //fishing
			if (animationName == "WAIT" || animationName == "WAIT2"
				|| animationName == "FISHING_HOOK_READY" || animationName == "FISHING_HOOK_ING"
				|| animationName == "HARPOON_AIM_MINIGAME_START")
				passed_check = true;
			break;
		case 2: //general waiting check
			if (animationName == "WAIT" || animationName == "WAIT2")
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
	//if check is 0, direct teleport, if its 1, modification such as add or subtract, if its 2 or more, modification except y at 80
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
	void MoveTo(const float& to_x, const float& to_y, const float& to_z, const float& from_x, const float& from_y, const float& from_z, const float& activate)
	{

	}

	bool SwitchRod()
	{
		//fetch inventory items
		std::vector<InvenPipe>inven_dump;
		inven_dump.reserve(m_ui8_maxinventory_slots);
		inven_dump = DumpInventory(2);
		//get rods

		std::vector<uint8_t> l_v_rod_slot;
		l_v_rod_slot.reserve(m_ui8_maxinventory_slots);

		int rodsLeft = 0;
		for (uint8_t x = 2; x < m_ui8_maxinventory_slots; x++) //trash bad rods, inventory starts at 2
		{
			for (int y = 0; y < sizeof(m_i16_fishing_equipments); y++)
			{
				if (inven_dump[x].m_ui16_item_id == m_i16_fishing_equipments[y] && inven_dump[x].m_ui16_current_durability > 0)
				{
					l_v_rod_slot.emplace_back(inven_dump[x].m_ui8_slot);
					rodsLeft++;
				}
				else if (inven_dump[x].m_ui16_item_id == m_i16_fishing_equipments[y] && inven_dump[x].m_ui16_current_durability == 0 &&
					inven_dump[x].m_ui8_enhancement_level == 0 && inven_dump[x].m_ui32_npc_repair_price == 0)
				{
					std::string convertx = std::to_string(inven_dump[x].m_ui8_slot);
					std::string converty = "1";
					LuaExecutor("deleteItem((getSelfPlayer()):getActorKey(),(CppEnums.ItemWhereType).eInventory," + convertx + "," + converty + ")");
				}
			}
		}
		std::unordered_map<std::string, uint32_t> filterItems;
		std::string filteritemName;
		int filteritemId;
		int filterdupCheck = 0;
		std::ifstream filterfin;
		filterfin.open(GetDirectoryFile(XorStringA("FilterItems.ini")), std::ifstream::in);
		while (filterfin.good())
		{
			std::getline(filterfin, filteritemName, ',');
			filterfin >> filteritemId;
			filterfin.ignore(1); //ignore newline
			if (filterdupCheck == filteritemId)
				break;
			filterItems.emplace(filteritemName, filteritemId);
			//Log("counter %d", filteritemId);
			filterdupCheck = filteritemId;
		}
		filterfin.close();
		//Log("counter %d", filterCounter);

		for (int x = 2; x < m_ui8_maxinventory_slots; x++) //trash garbage items
		{
			for (auto& target : filterItems)
			{
				if (inven_dump[x].m_ui16_item_id == target.second)
				{
					std::string convertx = std::to_string(inven_dump[x].m_ui8_slot);
					std::string converty = "1";
					LuaExecutor("deleteItem((getSelfPlayer()):getActorKey(),(CppEnums.ItemWhereType).eInventory," + convertx + "," + converty + ")");
				}
			}
		}

		//return true if no more rods left in inventory
		if (rodsLeft == 0)
		{
			//cLog("no more rods in inventory");
			return true;
		}
		else
		{
			//cLog("rodsleft more than 1");
			g_t_UseInventoryItem(0, l_v_rod_slot[0]);
			return false;
		}
	}
	void AutoFish(int predictGrade, bool relics_only)
	{
		bool Enabled = false;
		static int disableFishing;

		//stop fishing if there are no free inventory slots
		if (m_ui8_free_inventory_slots == 0)
		{
			BDO::g_b_auto_fishing = false;
			return;
		}

		//check if holding fishing equipments
		for (int count = 0; count < sizeof(m_i16_fishing_equipments); count++)
		{
			if (m_ui16_current_mainhand == m_i16_fishing_equipments[count])
			{
				Enabled = true;
				break; //break out of loop if found for performance
			}
			else
				Enabled = false;
		}

		//check whether or not the player is able to press space to start or grab fish
		if (Enabled)
			InputEvents(AnimationCheck(1, ""), BDOEnums::KeyCode_SPACE, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None);

		//if fishing then reset switch fishing equipment count
		if (AnimationCheck(3, "FISHING") || AnimationCheck(3, "HARPOON"))
			disableFishing = 0;

		//switch fishing equipment if mainhand durability is zero
		if (AnimationCheck(2, "") && m_ui16_get_current_mainhand_durability == 0)
		{
			//switch fishing equipment then check for the new fishing equipment durability
			if (SwitchRod() && m_ui16_get_current_mainhand_durability == 0)
			{
				disableFishing++;

				if (disableFishing == 10) //will check 10 times for rods before stop fishing
				{
					BDO::g_b_auto_fishing = false;
				}
			}
			else //attempt to use up the last fishing equipment's durability
				InputEvents(AnimationCheck(1, ""), BDOEnums::KeyCode_SPACE, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None);
		}

		if (!relics_only) //nonrelic fishing
		{
			//cLog("%d", relics_only);
			if (AnimationCheck(4, "FISHING_WAIT") || AnimationCheck(4, "HARPOON_AIM_WAIT")
				&& m_ui8_fish_grade < predictGrade)
			{
				SwitchRod();
				*((uint8_t*)(m_ui64_local_player_address + g_ki32_IsFishing)) = 0;
			}
		}
		else //relic fishing
		{
			//cLog("%d", relics_only);
			if (AnimationCheck(4, "FISHING_WAIT") || AnimationCheck(4, "HARPOON_AIM_WAIT")
				&& m_ui8_fish_grade != 1)
			{
				SwitchRod();
				*((uint8_t*)(m_ui64_local_player_address + g_ki32_IsFishing)) = 0;
			}
		}
	}

	void WorkersRestore()
	{
		if (TimerFunction(10000)) //check every 10secs, any higher it will be inaccurate
		{
			//dump and fetch inventory
			std::vector<InvenPipe>inven_dump;
			inven_dump.reserve(m_ui8_maxinventory_slots);
			inven_dump = DumpInventory(2);

			int RestoreItems[10] = { 9213, 9283, 9261, 9276, 9268, 9273, 9208, 9297, 9215, 9300 };

			uint64_t workerListStart = *((uint64_t*)(g_kuip_WorkerList + 0x18));
			uint64_t workerListEnd = *((uint64_t*)(g_kuip_WorkerList + 0x20));
			uint32_t totalWorkers = (workerListEnd - workerListStart) / 0x8;

			std::vector<uint8_t> l_v_worker_stamina;
			l_v_worker_stamina.reserve(totalWorkers);

			uint64_t dupAddresses = 0; //check for duplicates
			int x = 0;
			for (uint32_t counter = 0; counter < totalWorkers; counter++)
			{
				uint64_t fakeAddresses = *((uint64_t*)(workerListStart + 0x10));
				uint64_t currentWorker = *((uint64_t*)(workerListStart + x));
				x += 0x8;
				if (currentWorker == fakeAddresses || dupAddresses == currentWorker)
					continue;

				uint8_t currentStamina = *((uint8_t*)(currentWorker + 0x42));
				dupAddresses = currentWorker;
				if (currentStamina <= 40)
				{
					//cLog("stamina %d, %d", counter, currentStamina);
					l_v_worker_stamina.emplace_back(currentStamina);
				}
			}

			bool needRefill = false;
			for (const auto& targets : l_v_worker_stamina)
			{
				if (targets < 2)
				{
					needRefill = true;
					break;
				}
			}

			std::string LuaCommand;
			if (needRefill)
			{
				for (int x = 2; x < m_ui8_maxinventory_slots; x++)//const auto& invenItems : inven_dump
				{
					for (int y = 0; y < 10; y++)
					{
						if (inven_dump[x].m_ui16_item_id == RestoreItems[y])
						{
							//LuaExecutor("workerManager_Open()");

							LuaExecutor(XorStringA("HandleClicked_workerManager_RestoreAll()"));
							LuaExecutor(XorStringA("HandleClicked_restoreAll_SelectItem(0)"));
							LuaExecutor(XorStringA("workerRestoreAll_Confirm(0)"));
							LuaExecutor(XorStringA("HandleClicked_workerManager_ReDoAll()"));

							//LuaExecutor(XorStringA("workerManager_Close()"));
							return;
						}
					}
					if (x == m_ui8_maxinventory_slots - 1)
					{
						BDO::g_b_worker_auto_restore = false;
						return;
					}
				}
			}
		}
	}

	void reloadUI()
	{
		static bool activate;
		static bool not_in_rbf;
		static bool rbf_afk_check;

		if (BDO::g_b_reloadedUI)
			not_in_rbf = true;

		if (!not_in_rbf && !BDO::g_b_auto_manufacture && !BDO::g_b_auto_buy && !BDO::g_b_auto_fishing && AnimationCheck(2, "") && TimerFunction(2000))
		{
			if (!activate)
			{
				g_t_UseInventoryItem(0, 2);
				//*((float*)(m_ui64_teleport_3 + 0x120)) = *((float*)(m_ui64_teleport_3 + 0x120)) + 10;
				//*((float*)(m_ui64_teleport_3 + 0x124)) = *((float*)(m_ui64_teleport_3 + 0x124)) + 15;
				activate = true;
			}
			//std::thread(InputEvents, AnimationCheck(1, ""), BDOEnums::KeyCode_SPACE, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None).detach();
			//InputEvents(AnimationCheck(1, ""), BDOEnums::KeyCode_T, BDOEnums::KeyCode_None, BDOEnums::KeyCode_None);
		}

		if (m_ui8_fish_grade == BDO::g_i32_predictGrade && !rbf_afk_check
			&& AnimationCheck(4, "FISHING_WAIT") || AnimationCheck(4, "HARPOON_AIM_WAIT"))
		{
			//*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = 3325;
			//*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = *((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) + 15;
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = -81.25f;
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = 3329.0f;
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) = 6525.7f;

			rbf_afk_check = true;
		}
		if (AnimationCheck(4, "FISHING_HOOK_READY") || AnimationCheck(4, "FISHING_HOOK_SUCCESS")
			|| AnimationCheck(4, "HARPOON_AIM_SHOT_FIRE") || AnimationCheck(4, "HARPOON_AIM_MINIGAME_SUCCESS"))
		{
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_y)) = -81.7f;
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_x)) = 3321.0f;
			*((float*)(m_ui64_teleport_3 + g_ki32_teleport_z)) = 6525.7f;
			activate = false;
			not_in_rbf = false;
			rbf_afk_check = false;
		}

		if (!*BDO::g_p_in_game || !BDO::g_b_is_ready_to_play)
		{
			ExitProcess(0);
		}
	}

	void AutoManufacture()
	{
		//auto manufacture
		if (BDO::g_b_auto_manufacture)
		{
			if (*BDO::g_p_warehouse_exist && g_v_manufacture_file.size() == 0)
			{
				BDO::g_b_auto_manufacture = false;
				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Filter File Not Loaded!<PAOldColor>')"));
			}
			else if (*BDO::g_p_warehouse_exist && g_v_manufacture_file.size() != 0)
			{
				//fetch warehouse items
				uint64_t currentwarehouse_address = *((uint64_t*)g_kuip_CurrentWarehouse);
				uint32_t totalstorageslots = *((uint32_t*)(currentwarehouse_address + 0x04)) + 1;
				std::vector<StoragePipe>stor_dump;
				stor_dump.reserve(totalstorageslots);
				stor_dump = DumpWarehouse(2);

				//dump and fetch inventory
				std::vector<InvenPipe>inven_dump;
				inven_dump.reserve(m_ui8_maxinventory_slots);
				inven_dump = DumpInventory(2);

				static int slotNo_w, procType_w;
				static std::string procType_wn;
				if (!AnimationCheck(3, "MANUFACTURE") && !BDO::g_b_storage_check)
				{
					for (int count = 0; count < g_v_manufacture_file.size(); count++)//const auto& filter : manufacturefile)
					{
						for (const auto& storage : stor_dump)
						{
							if (storage.m_ui16_item_id == g_v_manufacture_file[count].itemId && storage.m_ui32_item_count >= 10)
							{
								slotNo_w = storage.m_ui8_slot;
								procType_w = g_v_manufacture_file[count].procType_w;
								procType_wn = g_v_manufacture_file[count].procType_wn;
								BDO::g_b_storage_check = true;
								goto endloop;
							}
						}
						if (count == g_v_manufacture_file.size() - 1)
						{
							BDO::g_b_auto_manufacture = false;
						}
					}
				}
			endloop:

				if (AnimationCheck(3, "MANUFACTURE") && !AnimationCheck(3, procType_wn))
				{
					g_t_InventoryToWarehouse(0, 2, inven_dump[2].m_ui32_item_count, *((uint32_t*)(g_kuip_PushPopItems)));
					BDO::g_b_wait_check = true;
				}
				else if (inven_dump[4].m_ui32_item_count > 0 && !BDO::g_b_wait_check)
				{
					g_t_InventoryToWarehouse(0, 4, inven_dump[4].m_ui32_item_count, *((uint32_t*)(g_kuip_PushPopItems)));
					BDO::g_b_wait_check = true;
				}
				else if (inven_dump[3].m_ui32_item_count > 0 && !BDO::g_b_wait_check)
				{
					g_t_InventoryToWarehouse(0, 3, inven_dump[3].m_ui32_item_count, *((uint32_t*)(g_kuip_PushPopItems)));
					BDO::g_b_wait_check = true;
				}

				if (inven_dump[2].m_ui32_item_count < 20 && stor_dump[slotNo_w].m_ui32_item_count >= 10 && !BDO::g_b_wait_check)
				{
					g_t_WarehouseToInventory(slotNo_w, 10, *((uint32_t*)(g_kuip_PushPopItems))); //warehouse to inventory
					BDO::g_b_wait_check = true;
				}

				if (BDO::g_b_wait_check && TimerFunction(2000))
				{
					BDO::g_b_wait_check = false;
					BDO::g_b_storage_check = false;
				}

				std::string LuaCommand;
				if (!AnimationCheck(3, "MANUFACTURE") && inven_dump[2].m_ui32_item_count != 0 && !BDO::g_b_is_manufacturing)
				{
					BDO::g_b_is_manufacturing = true;
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

				if (AnimationCheck(3, "MANUFACTURE"))
				{
					BDO::g_b_is_manufacturing = false;
				}
			}
			else
			{
				BDO::g_b_auto_manufacture = false;
				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Must be Nearby a warehouse<PAOldColor>')"));
			}
		}
		else //reset if turned off
		{
			BDO::g_b_storage_check = false;
			BDO::g_b_wait_check = false;
			BDO::g_b_is_manufacturing = false;
		}
	}

	void AutoSell()
	{
		//fetch inventory items
		std::vector<InvenPipe>inven_dump;
		inven_dump.reserve(m_ui8_maxinventory_slots);
		inven_dump = DumpInventory(2);

		//fetch market items
		uint64_t ListOfItems_Start = *((uint64_t*)(g_kuip_MarketBase + 0x00));
		uint64_t ListOfItems_End = *((uint64_t*)(g_kuip_MarketBase + 0x08));
		uint32_t ListOfItems = ((uint32_t)((ListOfItems_End - ListOfItems_Start) / 0x08));

		std::vector<MarketPipe>market_dump;
		market_dump.reserve(ListOfItems);
		market_dump = DumpMarketplace(2);

		//recent price, current register count, item max register stack
		//if registeration count == 0, list as max price

		static uint64_t item_location;

		for (uint32_t count = 0; count < ListOfItems; count++)
		{
			if (market_dump[count].m_ui32_market_item_index == BDO::g_i32_market_sell_item_id)
			{
				item_location = count;
				break;
			}
		}

		for (uint8_t count = 2; count < m_ui8_maxinventory_slots; count++) //inventory starts at 2
		{
			if (inven_dump[count].m_ui16_item_id == BDO::g_i32_market_sell_item_id)
			{

				if (inven_dump[count].m_ui32_item_count >= inven_dump[count].m_ui16_max_registerable_count)
				{
					if (BDO::g_i32_sell_type == 0)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui16_max_registerable_count, market_dump[item_location].m_ui64_min_price);
					else if (BDO::g_i32_sell_type == 1)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui16_max_registerable_count, market_dump[item_location].m_ui64_max_price);
					else if (BDO::g_i32_sell_type == 2)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui16_max_registerable_count, market_dump[item_location].m_ui64_recent_price);
					else if (BDO::g_i32_sell_type == 3)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui16_max_registerable_count, BDO::g_i32_custom_price);
				}
				else if (inven_dump[count].m_ui32_item_count < inven_dump[count].m_ui16_max_registerable_count)
				{
					if (BDO::g_i32_sell_type == 0)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui32_item_count, market_dump[item_location].m_ui64_min_price);
					else if (BDO::g_i32_sell_type == 1)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui32_item_count, market_dump[item_location].m_ui64_max_price);
					else if (BDO::g_i32_sell_type == 2)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui32_item_count, market_dump[item_location].m_ui64_recent_price);
					else if (BDO::g_i32_sell_type == 3)
						g_t_SellItemsToMarketplace(BDOEnums::eInventory, inven_dump[count].m_ui8_slot, inven_dump[count].m_ui32_item_count, BDO::g_i32_custom_price);
				}
			}
		}
		BDO::g_b_auto_sell = false;
	}

	void RemoveDesertDebuff()
	{
		uint64_t l_ui64_active_buffs = *((uint64_t*)(m_ui64_local_player_address + g_ki32_ActiveBuffCount));
		uint64_t l_ui64_active_buffs_list = *((uint64_t*)(m_ui64_local_player_address + g_ki32_ActiveBuffList));
		uint64_t l_ui64_first_node = *((uint64_t*)(l_ui64_active_buffs_list));
		uint64_t l_ui64_current_node = l_ui64_first_node;

		static bool l_b_desert_debuff[3] = { false, false, false };
		uint32_t l_i32_debuff_removers[2] = { 6656,  9306 }; //purified water, star anise tea

		//fetch inventory items
		std::vector<InvenPipe>inven_dump;
		inven_dump.reserve(m_ui8_maxinventory_slots);
		inven_dump = DumpInventory(2);
		static auto last = std::chrono::high_resolution_clock::now();
		auto now = std::chrono::high_resolution_clock::now();

		if (std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count() > 1000) //check every 0.5secs, any higher it will be inaccurate
		{
			if (!l_b_desert_debuff[0])
			{
				for (uint64_t count = 0; count < l_ui64_active_buffs + 2; count++) //+2 for overhead
				{
					if (*((uint64_t*)(l_ui64_current_node + 0x30)) == 0x2F) //check if the node is valid 0x2F = debuff, 0x3F = buff
					{
						std::string animationName((char*)(*((uint64_t*)(l_ui64_current_node + 0x18))));
						//cLog("reached: %s", animationName.c_str());
						if (animationName.find("04_DeBuff/Sunstroke.dds") != std::string::npos)
						{
							l_b_desert_debuff[0] = true;
							l_b_desert_debuff[1] = true;
						}
						else if (animationName.find("04_DeBuff/Cold.dds") != std::string::npos)
						{
							l_b_desert_debuff[0] = true;
							l_b_desert_debuff[2] = true;
						}
					}

					uint64_t l_ui64_next_node = *((uint64_t*)(l_ui64_current_node));
					l_ui64_current_node = l_ui64_next_node;
				}
			}
			else
			{
				for (uint8_t x = 2; x < m_ui8_maxinventory_slots; x++) //inventory starts at 2
				{
					if (l_b_desert_debuff[1] && inven_dump[x].m_ui16_item_id == l_i32_debuff_removers[0])
					{
						g_t_UseInventoryItem(0, inven_dump[x].m_ui8_slot);
						l_b_desert_debuff[0] = false;
						l_b_desert_debuff[1] = false;
					}
					else if (l_b_desert_debuff[2] && inven_dump[x].m_ui16_item_id == l_i32_debuff_removers[1])
					{
						g_t_UseInventoryItem(0, inven_dump[x].m_ui8_slot);
						l_b_desert_debuff[0] = false;
						l_b_desert_debuff[2] = false;
					}
				}
			}
		}
	}
};
class ESP
{
	uint64_t local_player_address;
	HWND hWindow; //find window class name
	RECT rect;
	float screenWidth, screenHeight, readViewMatrix[4][4];
	int oriPos0, oriPos1, desPos0, desPos1;
	double oriScreen[2], desScreen[2];
public:
	ESP()
	{
		local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
		hWindow = FindWindowA("BlackDesertWindowClass", NULL);
		GetClientRect(hWindow, &rect);
		screenWidth = (float)(rect.right - rect.left);
		screenHeight = (float)(rect.bottom - rect.top);
	}
	void DrawESP()
	{
		float l_f_self_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
		float l_f_self_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
		float l_f_self_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

		int matrix_counter = 0; //counter goes up by 4, to 60 || 0x0 -> 0x3C
		for (int x = 0; x < 4; x++)
		{
			for (int y = 0; y < 4; y++)
			{
				readViewMatrix[y][x] = *((float*)(g_kuip_ViewMatrix + matrix_counter));
				matrix_counter += 4;
			}
		}

		float w = 0.0f;
		oriScreen[0] = readViewMatrix[0][0] * l_f_self_position_x + readViewMatrix[0][1] * l_f_self_position_y + readViewMatrix[0][2] * l_f_self_position_z + readViewMatrix[0][3];
		oriScreen[1] = readViewMatrix[1][0] * l_f_self_position_x + readViewMatrix[1][1] * l_f_self_position_y + readViewMatrix[1][2] * l_f_self_position_z + readViewMatrix[1][3];
		w = (float)(readViewMatrix[3][0] * l_f_self_position_x + readViewMatrix[3][1] * l_f_self_position_y + readViewMatrix[3][2] * l_f_self_position_z + readViewMatrix[3][3]);

		if (w < 0.01f)
		{
			return;
		}

		float Pinvw = 1.0f / w;
		oriScreen[0] *= Pinvw;
		oriScreen[1] *= Pinvw;

		float x = (float)(screenWidth / 2);
		float y = (float)(screenHeight / 2);

		x += (float)(0.5 * oriScreen[0] * screenWidth + 0.5);
		y -= (float)(0.5 * oriScreen[1] * screenHeight + 0.5);

		oriScreen[0] = x + rect.left;
		oriScreen[1] = y + rect.top;

		oriPos0 = (int)oriScreen[0];
		oriPos1 = (int)oriScreen[1];

		uint64_t actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
		uint32_t actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
		uint64_t firstEntry = ((uint64_t)(actorListFirstEntry));
		uint64_t currentEntry = (*(uint64_t*)(firstEntry));

		uint8_t getLevel;
		float l_f_target_position_x, l_f_target_position_y, l_f_target_position_z;
		std::vector<ActorListManager> actorListInfo; //in actordata.h
		std::vector<ActorListESP> actorListPositions; //in actordata.h
		if (TimerFunction(BDO::g_i32_esp_draw_interval))
		{
			while (((uint64_t)(currentEntry)) != ((uint64_t)(firstEntry)))
			{
				uint64_t actorData_data = *((uint64_t*)(currentEntry + 0x18));

				actorListInfo.emplace_back(((uint64_t)(actorData_data)));
				currentEntry = *((uint64_t*)(currentEntry));
			}
			for (const auto& actors: actorListInfo)
			{
				//get character name
				std::wstring& l_ws_name = std::wstring((const wchar_t*)(*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterName))));
				std::string l_s_name(l_ws_name.begin(), l_ws_name.end());

				uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));
				bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));

				//get actor id
				uint16_t& actorID = *((uint16_t*)(actors.m_ui64_address + g_ki32_ActorId));

				//get level
				if (actorType_check == 0)
					getLevel = *((uint8_t*)(actors.m_ui64_address + g_ki32_Level));
				else
					getLevel = 0;

				//get distance
				if (actorType_check <= 3)
				{
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

				float pX = l_f_self_position_x - l_f_target_position_x;
				float pY = l_f_self_position_y - l_f_target_position_y;
				float pZ = l_f_self_position_z - l_f_target_position_z;
				uint32_t target_distance = sqrt(pX * pX + pY * pY + pZ * pZ);

				if (BDO::g_i32_esp_target == 10 && g_um_esp_actor_id.size() != 0)
					for (const auto& g_i32_esp_target : g_um_esp_actor_id)
					{
						if (dead_actor == false && l_s_name == g_i32_esp_target.first || actorID == g_i32_esp_target.second)
							actorListPositions.emplace_back(l_s_name, actorID, getLevel, l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_distance);
					}
				else if (BDO::g_i32_esp_target != 10 && actorType_check == BDO::g_i32_esp_target && dead_actor == false)
					actorListPositions.emplace_back(l_s_name, actorID, getLevel, l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, target_distance);
			}
			int maxdraw = 0;
			for (const auto& render_target : actorListPositions)
			{
				if (maxdraw > 30) //draw max of 30 targets
					break;
				float Tw = 0.0f;
				desScreen[0] = readViewMatrix[0][0] * render_target.m_f_position_x + readViewMatrix[0][1] * render_target.m_f_position_y + readViewMatrix[0][2] * render_target.m_f_position_z + readViewMatrix[0][3];
				desScreen[1] = readViewMatrix[1][0] * render_target.m_f_position_x + readViewMatrix[1][1] * render_target.m_f_position_y + readViewMatrix[1][2] * render_target.m_f_position_z + readViewMatrix[1][3];
				Tw = (float)(readViewMatrix[3][0] * render_target.m_f_position_x + readViewMatrix[3][1] * render_target.m_f_position_y + readViewMatrix[3][2] * render_target.m_f_position_z + readViewMatrix[3][3]);

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

				if (BDO::g_b_show_esp)
				{
					if (BDO::g_b_show_esp_line)
						rDrawLine(Vector2(oriPos0, oriPos1), Vector2(desPos0, desPos1), ImColor(25, 255, 255, 255), 1);
					if (BDO::g_b_show_esp_circle)
						rDrawCircle(Vector2(desPos0, desPos1), 10, ImColor(0, 25, 255, 255), 1, false);
					if (BDO::g_b_show_esp_name)
						rDrawText(ImGui::GetFont(), "Name: " + render_target.m_s_name, ImVec2(desPos0, desPos1), 20, ImColor(255, 0, 0, 255), 1);
					if (BDO::g_b_show_esp_id)
						rDrawText(ImGui::GetFont(), "ID: " + std::to_string(render_target.m_ui16_id), ImVec2(desPos0, desPos1 + 20), 15, ImColor(255, 255, 255, 255), 1);
					if (BDO::g_b_show_esp_level)
						rDrawText(ImGui::GetFont(), "Level: " + std::to_string(render_target.m_ui8_level), ImVec2(desPos0, desPos1 + 35), 15, ImColor(255, 255, 255, 255), 1);
					if (BDO::g_b_show_esp_distance)
						rDrawText(ImGui::GetFont(), "Distance: " + std::to_string(render_target.m_i32_distance), ImVec2(desPos0, desPos1 + 50), 15, ImColor(255, 255, 255, 255), 1);
				}
				maxdraw++;
			}
		}
	}
	void DrawOnWorldMap()
	{
		uint64_t Base = *((uint64_t*)(g_kuip_Base));
		uint64_t Baseptr1 = *((uint64_t*)(Base + 0x18));
		uint64_t Baseptr2 = *((uint64_t*)(Baseptr1 + 0x168)); //was 0x160
		uint64_t worldmapviewmatrix = (Baseptr2 + 0x6F4); //was 0x5F4
		uint32_t isworldmapopened = *((uint32_t*)(Baseptr2 + 0x800)); //was 0x700

		if (isworldmapopened != 0)
		{
			uint64_t actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
			uint32_t actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
			uint64_t firstEntry = ((uint64_t)(actorListFirstEntry));
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
				uint64_t actorData_data = *((uint64_t*)(currentEntry + 0x18));

				actorListInfo.emplace_back(((uint64_t)(actorData_data)));
				currentEntry = *((uint64_t*)(currentEntry));
			}
			for (const auto& actors : actorListInfo)
			{
				uint8_t actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

				//get actor id
				uint16_t actorID = *((uint16_t*)(actors.m_ui64_address + g_ki32_ActorId));

				//get distance
				if (actorType_check <= 3)
				{
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

				if (BDO::g_i32_esp_target == 10 && g_um_esp_actor_id.size() != 0)
					for (const auto& g_i32_esp_target : g_um_esp_actor_id)
					{
						if (actorID == g_i32_esp_target.second)
							actorListPositions.emplace_back("", actorID, 0, getPosX, getPosY, getPosZ, 0);
					}
				else if (BDO::g_i32_esp_target != 10 && actorType_check == BDO::g_i32_esp_target)
					actorListPositions.emplace_back("", actorID, 0, getPosX, getPosY, getPosZ, 0);
			}
			int maxdraw = 0;
			for (const auto& render_target : actorListPositions)
			{
				if (maxdraw > 30) //draw max of 30 targets
					break;
				float Tw = 0.0f;
				desScreen[0] = readViewMatrix[0][0] * render_target.m_f_position_x + readViewMatrix[0][1] * render_target.m_f_position_y + readViewMatrix[0][2] * render_target.m_f_position_z + readViewMatrix[0][3];
				desScreen[1] = readViewMatrix[1][0] * render_target.m_f_position_x + readViewMatrix[1][1] * render_target.m_f_position_y + readViewMatrix[1][2] * render_target.m_f_position_z + readViewMatrix[1][3];
				Tw = (float)(readViewMatrix[3][0] * render_target.m_f_position_x + readViewMatrix[3][1] * render_target.m_f_position_y + readViewMatrix[3][2] * render_target.m_f_position_z + readViewMatrix[3][3]);

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
				maxdraw++;
			}
		}
	}
	void DrawWayPoints()
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
};

inline bool PlayersDetection(bool check)
{
	if (check) //overwrite safety check
		return false;

	uint8_t player_check = 0;
	uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

	uint64_t actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
	uint32_t actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
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

		if (actorType_check == BDOEnums::ActorType_Deadbody)
		{
			//deadbody distance = deadbody - self
			float deadbody_distance = sqrt(
				(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
				(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));


			if (deadbody_distance <= 300.0f && !*((bool*)(actors.m_ui64_address + g_ki32_actorHasLoot)))
				g_t_RequestDroppedItems(*((uint64_t*)g_kuip_LocalPlayer), actors.m_ui64_address);
		}
		else if (actorType_check == BDOEnums::ActorType_Player)
		{
			//std::wstring& l_ws_name = std::wstring((const wchar_t*)(*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterName))));
			//if(l_ws_name != L"~!@#$") //Dissimulate, FOTMPlayer
				++player_check;
		}
	}

	return player_check > 1;
}
inline bool MonstersDetection()
{
	if (BDO::g_b_navigation_monsters_detection)
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

			if (actorType_check == BDOEnums::ActorType_Monster)
			{
				//0 if the actor is not dead
				bool& dead_actor = *((bool*)(actors.m_ui64_address + g_ki32_DeadActor));

				float monster_distance = sqrt(
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Self[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));

				//float& l_f_target_position_x = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[0]));
				//float& l_f_target_position_y = *((float*)(*(((uint64_t*)((*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[1]));
				//float& l_f_target_position_z = *((float*)(*(((uint64_t*)(*(((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController))) + g_ki32_characterLocalPlayer))) + g_ki32_WorldPosition_Target[2]));

				//float monster_distance = sqrt(
				//	(l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (l_f_target_position_x - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
				//	(l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (l_f_target_position_y - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
				//	(l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (l_f_target_position_z - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));

				if (monster_distance <= BDO::g_f_monster_range && dead_actor == false)
						return true;
			}
		}
	}

	return false;
}
inline void LootNearby()
{
	if (BDO::g_b_navigation_looting)
	{
		Entity entity;
		uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

		uint64_t actorListFirstEntry = *((uint64_t*)(g_kuip_ActorList));
		uint32_t actorListCount = *((uint32_t*)(g_kuip_ActorList + 0x08));
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

			if (actorType_check == BDOEnums::ActorType_Deadbody)
			{
				float deadbody_distance = sqrt(
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]))) +
					(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))) * (*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) - *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]))));

				while (deadbody_distance <= BDO::g_f_loot_range && !*((bool*)(actors.m_ui64_address + g_ki32_actorHasLoot)))
				{
					entity.Teleportation(
						*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0])) / 100,
						(*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1])) + 50) / 100,
						*((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2])) / 100
						, 0, deadbody_distance);

					g_t_RequestDroppedItems(*((uint64_t*)g_kuip_LocalPlayer), actors.m_ui64_address);
				}
			}
		}
	}
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
	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

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
		std::wstring& l_ws_name = std::wstring((const wchar_t*)(*((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterName))));
		std::string l_s_name(l_ws_name.begin(), l_ws_name.end());

		uint8_t& actorType_check = *((uint8_t*)(actors.m_ui64_address + g_ki32_ActorType));

		if (actorType_check == 6)
		{
			float& l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[0]));
			float& l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[1]));
			float& l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Collectables[2]));

			fLog("address: %p, floatx: %f, floaty: %f, floatz: %f, actorType: %d, name: %s", actors.m_ui64_address,
				l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, actorType_check, l_s_name.c_str());
		}
		else
		{
			float& l_f_target_position_x = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[0]));
			float& l_f_target_position_y = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[1]));
			float& l_f_target_position_z = *((float*)(actors.m_ui64_address + g_ki32_WorldPosition_Static[2]));

			fLog("address: %p, floatx: %f, floaty: %f, floatz: %f, actorType: %d, name: %s", actors.m_ui64_address,
				l_f_target_position_x, l_f_target_position_y, l_f_target_position_z, actorType_check, l_s_name.c_str());
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

	fLog("printing: %d, %x, %s", animationId, NameEntryAddy, animationName);
}

void RBFSuicide()
{
	Entity entity;

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);

	for (int x = 0; x < 7; x++)
	{
		entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);

	for (int x = 0; x < 7; x++)
	{
		entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);

	for (int x = 0; x < 7; x++)
	{
		entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);

	for (int x = 0; x < 7; x++)
	{
		entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 500);
	}

	entity.Teleportation(0.0f, 80.0f, 0.0f, 2, 800);

	for (int x = 0; x < 7; x++)
	{
		entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 500);
	}
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
	Entity entity;

	uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t inventoryPtr = *((uint64_t*)(local_player_address + g_ki32_Inventory));
	float old_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float old_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float old_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
	//rbf boat position: 3324, -82.080, 6525.680
	BDO::g_b_clear_position = true;

	LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));

	std::this_thread::sleep_for(std::chrono::seconds(10));

	float new_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
	float new_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
	float new_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
	float distance = sqrt((new_PosX - old_PosX) * (new_PosX - old_PosX) + (new_PosY - old_PosY) * (new_PosY - old_PosY) + (new_PosZ - old_PosZ) * (new_PosZ - old_PosZ));
	if (distance < 300)
	{
		fLog(XorStringA("Automated Fishing failed, unable to join red battlefield"));
		return;
	}
	//float rbf_black[3] = { 3261.710f, 100.0f, 6133.130f };
	//float rbf_red[3] = { 3440.000f, 100.0f, 6141.0f };
	//float ba[3] = { 1384.76f, 100.0f, 3373.61f };

	RBFSuicide();

	//sleep until fall to death
	std::this_thread::sleep_for(std::chrono::seconds(10));

	//revive at the boat/node
	LuaExecutor(XorStringA("deadMessage_RevivalExploration_Confirm()"));

	std::this_thread::sleep_for(std::chrono::seconds(10));

	g_t_UseInventoryItem(0, 2);

	std::this_thread::sleep_for(std::chrono::seconds(1));

	BDO::g_b_character_activation = true;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	BDO::g_f_character_animation_speed = 10.0f;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	BDO::g_b_auto_fishing = true;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	BDO::g_b_reloadedUI_check = true;
	std::this_thread::sleep_for(std::chrono::seconds(1));

	while (BDO::g_b_auto_fishing)
	{
		std::this_thread::sleep_for(std::chrono::seconds(1));
	}

	BDO::g_b_reloadedUI_check = false;

	std::this_thread::sleep_for(std::chrono::seconds(3));

	g_t_UseInventoryItem(0, 2);

	std::this_thread::sleep_for(std::chrono::seconds(1));

	LuaExecutor(XorStringA("ToClient_UnJoinLocalWar()"));

	std::this_thread::sleep_for(std::chrono::seconds(10));

	LuaExecutor(XorStringA("ToClient_JoinPvpBattleGround()"));

	std::this_thread::sleep_for(std::chrono::seconds(10));

	BASuicide();

	//sleep until fall to death
	std::this_thread::sleep_for(std::chrono::seconds(10));

	//revivie to town
	LuaExecutor(XorStringA("deadMessage_RevivalVillage_Confirm()"));

	//sleep until game done reloading
	std::this_thread::sleep_for(std::chrono::seconds(10));

	//storage
	LuaExecutor(XorStringA("HandleClicked_TownNpcIcon_NaviStart(6, true)"));
	std::this_thread::sleep_for(std::chrono::seconds(5));
	entity.Teleportation(1599.145f, -78.820f, 2904.767f, 0, 100);
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_Interaction()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("HandleClickedFuncButton(1)"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	g_t_InventoryToWarehouse(0, 2, 1, *((uint32_t*)(g_kuip_PushPopItems)));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_LeaveDialog()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));

	//trader
	LuaExecutor(XorStringA("HandleClicked_TownNpcIcon_NaviStart(5, true)"));
	std::this_thread::sleep_for(std::chrono::seconds(10));
	entity.Teleportation(1574.739f, -79.020f, 2921.715f, 0, 100);
	std::this_thread::sleep_for(std::chrono::seconds(1));
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

	//storage
	entity.Teleportation(1588.767f, -79.016f, 2909.964f, 0, 1000);
	entity.Teleportation(1591.330f, -79.016f, 2909.47f, 0, 1000);
	uint64_t silvercount = *((uint64_t*)(inventoryPtr + 0x10));
	entity.Teleportation(1599.145f, -78.820f, 2904.767f, 0, 1000);
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("RemoteControl_Interaction()"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	LuaExecutor(XorStringA("HandleClickedFuncButton(1)"));
	std::this_thread::sleep_for(std::chrono::seconds(1));
	g_t_InventoryToWarehouse(0, 0, silvercount, *((uint32_t*)(g_kuip_PushPopItems)));
	std::this_thread::sleep_for(std::chrono::seconds(3));
	g_t_WarehouseToInventory(1, 1, *((uint32_t*)(g_kuip_PushPopItems))); //warehouse to inventory
	std::this_thread::sleep_for(std::chrono::seconds(1));

	LuaExecutor(XorStringA("ToClient_UnJoinPvpBattleGround()"));

	std::this_thread::sleep_for(std::chrono::seconds(15));

	BDO::g_b_automate_fishing = true;
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
		if (!BDO::g_b_navigation_activate)
			return;

		BDO::g_i32_navigation_lastpoint = nearest_node + 1; //waypoint vector starts at 0 while waypoint file starts at 1

		entity.Teleportation(g_v_waypoints_file[nearest_node].m_f_x / 100, g_v_waypoints_file[nearest_node].m_f_y / 100, g_v_waypoints_file[nearest_node].m_f_z / 100, g_v_waypoints_file[nearest_node].m_ui16_type, g_v_waypoints_file[nearest_node].m_ui16_delay);

		while (MonstersDetection())
		{
			//BDO::g_b_character_animation_lock = true;
			std::this_thread::sleep_for(std::chrono::milliseconds(200));
		}

		//BDO::g_b_character_animation_lock = false;

		LootNearby();

		while (BDO::g_b_navigation_pause)
			std::this_thread::sleep_for(std::chrono::milliseconds(200));
	}

	//actual start
	while (BDO::g_b_navigation_activate && !g_v_waypoints_file.empty())
	{
		uint16_t current_line_count = 1; //waypoint file starts at 1
		for (const auto& grinding : g_v_waypoints_file)
		{
			if (!BDO::g_b_navigation_activate)
				return;

			BDO::g_i32_navigation_lastpoint = current_line_count; //get current waypoint

			entity.Teleportation(grinding.m_f_x / 100, grinding.m_f_y / 100, grinding.m_f_z / 100, grinding.m_ui16_type, grinding.m_ui16_delay);

			while (MonstersDetection())
			{
				//BDO::g_b_character_animation_lock = true;
				std::this_thread::sleep_for(std::chrono::milliseconds(200));
			}

			//BDO::g_b_character_animation_lock = false;

			LootNearby();

			while (BDO::g_b_navigation_pause)
				std::this_thread::sleep_for(std::chrono::milliseconds(200));

			++current_line_count;
		}

		//initiate ingame variables linkage
		g_b_lua_pipe_call = true;
		std::this_thread::sleep_for(std::chrono::milliseconds(250));
		while (BDOLuaVariables::sumtotalWeight > 163) //close the game if weight is over 160%
		{
			static bool print_once = false;
			LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));
			LuaExecutor(XorStringA("ToClient_SavageDefenceJoin()"));
			if (!print_once)
			{
				fLog(XorStringA("OverWeight"));
				print_once = true;
			}
			if (BDO::g_b_reloadedUI)
			{
				ExitProcess(0);
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
		BDO::g_i32_navigation_lastpoint = nearest_node + 1; //waypoint vector starts at 0 while waypoint file starts at 1

		while (!cleared)
		{
			if (BDO::g_b_navigation_activate)
				*((uint8_t*)local_player_address + g_ki32_MovementControl) = 1.0f;
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

			while (BDO::g_b_navigation_pause)
				std::this_thread::sleep_for(std::chrono::milliseconds(200));

			actorListInfo.clear();
		}

		origin_position_x = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
		origin_position_y = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
		origin_position_z = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
		cleared = false;
	}

	//actual start
	while (BDO::g_b_navigation_activate && !g_v_waypoints_file.empty())
	{
		uint16_t current_line_count = 1; //waypoint file starts at 1

		for (const auto& grinding : g_v_waypoints_file)
		{
			BDO::g_i32_navigation_lastpoint = current_line_count;

			while (!cleared)
			{
				if (BDO::g_b_navigation_activate)
					*((uint8_t*)local_player_address + g_ki32_MovementControl) = 1.0f;
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

				while (BDO::g_b_navigation_pause)
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

void MarketSystem()
{
	static ImGuiLog m_market_log;

	static auto rng = std::default_random_engine{};

	if (BDO::g_b_auto_buy && g_v_market_items.empty())
	{
		LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Please Load Market File First<PAOldColor>')"));
		BDO::g_b_auto_buy = false;
	}

	if (BDO::g_b_show_market_log)
	{
		static bool l_b_shown_market_log_first_time;
		m_market_log.Draw("Market Log");

		uint64_t warehouse_money = g_t_WarehouseMoneyFromNPCShop();

		if (warehouse_money != BDO::g_ui64_warehouse_silver_for_market || !l_b_shown_market_log_first_time)
		{
			BDO::g_ui64_warehouse_silver_for_market = warehouse_money;
			m_market_log.AddLog("Warehouse Money: %llu\n", BDO::g_ui64_warehouse_silver_for_market);

			l_b_shown_market_log_first_time = true;
		}
	}

	if (BDO::g_b_auto_buy)
	{
		if (TimerFunction(BDO::g_i32_execution_interval))
		{
			for (uint8_t item_counter = 0; item_counter < g_v_market_items.size(); item_counter++)
			{
				g_t_RequestItemMarketSellInfo(BDO::g_i32_territory_key, g_v_market_items[item_counter].m_ui32_itemid);

				uint32_t target_slot_count = g_t_GetItemMarketSellInfoInClientCount(BDO::g_i32_territory_key, g_v_market_items[item_counter].m_ui32_itemid);

				if (target_slot_count == 0)
					continue;

				for (uint32_t slot_index = 0; slot_index < target_slot_count; slot_index++)
				{
					uint64_t sell_info = g_t_GetItemMarketSellInfoInClientByIndex(BDO::g_i32_territory_key, g_v_market_items[item_counter].m_ui32_itemid, slot_index);

					if (sell_info == 0x00)
						continue;

					uint64_t& sell_info_count = *((uint64_t*)(sell_info + 0x18));

					if (sell_info_count > 0)
					{
						bool is_bidding_item = g_t_IsBiddingItem(sell_info);

						uint64_t one_price = g_t_GetOnePrice(sell_info);
						uint64_t total_price = (one_price * sell_info_count);

						if (g_t_WarehouseMoneyFromNPCShop() < total_price)
							continue;

						if (is_bidding_item)
						{
							bool is_bidding_join_time = g_t_IsBiddingJoinTime(sell_info);
							uint64_t item_market_no = g_t_GetItemMarketNo(sell_info);
							bool is_bidding_join_item = g_t_IsBiddingJoinItem(item_market_no);

							if (is_bidding_join_time)
							{
								if (!is_bidding_join_item)
								{
									m_market_log.AddLog("[%s] Bidding on %s [Price: %llu]\n", get_formatted_datetime().c_str(), g_v_market_items[item_counter].m_s_name.c_str(), total_price);

									g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, g_v_market_items[item_counter].m_ui32_itemid, slot_index, sell_info_count);
								}
							}
							else if (is_bidding_join_item)
							{
								m_market_log.AddLog("[%s] Confirming bid on %s [Price: %llu]\n", get_formatted_datetime().c_str(), g_v_market_items[item_counter].m_s_name.c_str(), total_price);

								g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, g_v_market_items[item_counter].m_ui32_itemid, slot_index, sell_info_count);
							}
						}
						else
						{
							m_market_log.AddLog("[%s] Buying %s [Price: %llu]\n", get_formatted_datetime().c_str(), g_v_market_items[item_counter].m_s_name.c_str(), total_price);

							g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, g_v_market_items[item_counter].m_ui32_itemid, slot_index, sell_info_count);
						}
					}
				}

				g_v_market_items.emplace_back(g_v_market_items[item_counter].m_s_name, g_v_market_items[item_counter].m_ui32_itemid);
				g_v_market_items.erase(g_v_market_items.begin() + item_counter);
			}
		}
	}
}
void BaseFunctions()
{
	if (BDO::g_b_navigation_player_detection && PlayersDetection(BDO::g_b_player_detection_overwrite))
	{
		//LuaExecutor(XorStringA("getSelfPlayer():setActionChart('WAIT')"));
		LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));
		LuaExecutor(XorStringA("ToClient_SavageDefenceJoin()"));
		//LuaExecutor(XorStringA("ToClient_JoinPvpBattleGround()"));
		if (BDO::g_b_reloadedUI || TimerFunction(1000))
		{
			fLog(XorStringA("Player Detection Triggered"));
			ExitProcess(0);
		}
	}
	//debug
	if (BDO::g_b_debug)
	{
		//std::thread(InputEvents,true, BDOEnums::KeyCode_W, BDOEnums::KeyCode_F, BDOEnums::KeyCode_None).detach();
		//BDO::g_b_debug = false;
	}
	//g_b_is_ready_to_play
	if (*BDO::g_p_in_game)
	{
		uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
		BDO::g_b_is_ready_to_play = *((uint8_t*)(local_player_address + g_ki32_IsReadyToPlay));
	}
	//Check if vehicle exist and if its channel/character switching
	if (*BDO::g_p_vehicle_exist && *BDO::g_p_in_game)
	{
		uintptr_t vehicle_base_address = *((uintptr_t*)g_kuip_CurrentVehicle);

		if (!BDO::g_b_vehicle_activation || PlayersDetection(BDO::g_b_player_detection_overwrite))
		{
			*((int*)(vehicle_base_address + g_ki32_mount_accel)) = 1490000;
			*((int*)(vehicle_base_address + g_ki32_mount_speed)) = 1590000;
			*((int*)(vehicle_base_address + g_ki32_mount_turn)) = 1450000;
			*((int*)(vehicle_base_address + g_ki32_mount_brake)) = 1450000;
			if (!BDO::g_b_vehicle_activation)
			{
				BDO::g_i32_vehicle_accel_slider = 149;
				BDO::g_i32_vehicle_speed_slider = 159;
				BDO::g_i32_vehicle_turn_slider = 145;
				BDO::g_i32_vehicle_brake_slider = 145;
			}
		}
		else if (BDO::g_b_vehicle_activation)
		{
			*((int*)(vehicle_base_address + g_ki32_mount_accel)) = BDO::g_i32_vehicle_accel_slider * 10000;
			*((int*)(vehicle_base_address + g_ki32_mount_speed)) = BDO::g_i32_vehicle_speed_slider * 10000;
			*((int*)(vehicle_base_address + g_ki32_mount_turn)) = BDO::g_i32_vehicle_turn_slider * 10000;
			*((int*)(vehicle_base_address + g_ki32_mount_brake)) = BDO::g_i32_vehicle_brake_slider * 10000;
		}
	}
	//Check if channel/character switching/reloaded UI (leaving instance places), if so turn off everything.
	if (!*BDO::g_p_in_game || !BDO::g_b_is_ready_to_play || BDO::g_b_reloadedUI)
	{
		//if(BDO::g_b_reloadedUI)
		//cLog("UI reloaded");
		BDO::g_b_character_activation = false;
		BDO::g_b_game_loaded_first_time = false;
		BDO::g_b_auto_fishing = false;
		BDO::g_b_auto_manufacture = false;
		BDO::g_b_auto_buy = false;
		BDO::g_b_reloadedUI = false;
		BDO::g_b_navigation_pet_loot = false;
		BDO::g_b_navigation_player_detection = false;
		BDO::g_b_vehicle_activation = false;
		BDO::g_b_navigation_activate = false;

		if (BDO::g_btp_pet_system_bypass != BDO::g_bt_pet_system_nop)
			memcpy(BDO::g_btp_pet_system_bypass, BDO::g_bt_pet_system_nop, sizeof(BDO::g_bt_pet_system_nop));

		if (BDO::g_btp_bypass_obstacle != BDO::g_bt_obstacle_normal)
			memcpy(BDO::g_btp_bypass_obstacle, BDO::g_bt_obstacle_normal, sizeof(BDO::g_bt_obstacle_normal));

		if (BDO::g_b_navigation_reload_check)
		{
			fLog(XorStringA("Crash from random Reload"));
			ExitProcess(0);
		}

	}
	else
	{
		Entity entity;
		ESP esp;
		//teleport to crosshair
		if (ImGui::IsKeyReleased(VK_F12) & 0x01)
		{
			uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
			entity.Teleportation(*((float*)(local_player_address + g_ki32_cursor_position_x))/100, *((float*)(local_player_address + g_ki32_cursor_position_y))/100, *((float*)(local_player_address + g_ki32_cursor_position_z))/100, 0, 100);
		}
		//if (ImGui::IsKeyReleased(VK_F1) & 0x01)
		//{
		//	BDO::g_b_character_animation_lock = !BDO::g_b_character_animation_lock;
		//}
		//auto manufacture
		if (BDO::g_b_auto_manufacture)
		{
			entity.AutoManufacture();
		}
		else if (!BDO::g_b_auto_manufacture && BDO::g_b_is_manufacturing)
		{
			BDO::g_b_is_manufacturing = false;
		}
		//auto sell relics
		if (BDO::g_b_auto_sell)
		{
			entity.AutoSell();
		}
		// reloaded ui check
		if (BDO::g_b_reloadedUI_check)
		{
			entity.reloadUI();
		}
		//auto worker
		if (BDO::g_b_worker_auto_restore)
		{
			entity.WorkersRestore();
		}
		//remove desert debuff
		if (BDO::g_b_remove_desert_debuff)
		{
			entity.RemoveDesertDebuff();
		}
		//draw esp
		if (BDO::g_b_show_esp)
		{
			esp.DrawESP();
		}
		//draw on world map
		if (BDO::g_b_show_world_map)
		{
			esp.DrawOnWorldMap();
		}
		//draw waypoints
		if (BDO::g_b_navigation_show_waypoints)
		{
			esp.DrawWayPoints();
		}
		//auto fishing
		if (BDO::g_b_auto_fishing) //right now its doing fishing
		{
			entity.AutoFish(BDO::g_i32_predictGrade, BDO::g_b_relics_only);
			uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
			float getPosX = fabsf(*((float*)(local_player_address + g_ki32_WorldPosition_Self[0])));
			float veriPos = fabsf(BDO::g_f_fishingPosX - getPosX);

			if (PlayersDetection(BDO::g_b_player_detection_overwrite) || !BDO::g_b_is_ready_to_play || veriPos > 500) //check for players and teleport
			{
				ExitProcess(0);
			}
		}
		if (BDO::g_b_clear_position)
		{
			uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
			BDO::g_f_fishingPosX = fabsf(*((float*)(local_player_address + g_ki32_WorldPosition_Self[0])));
			BDO::g_b_clear_position = false;
		}
		if (BDO::g_b_automate_fishing)
		{
			if (TimerFunction(200))
			{
				std::thread(AutomateFishing).detach();
				BDO::g_b_automate_fishing = false;
			}
		}
		if (BDO::g_b_navigation_pet_loot)
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
		if (BDO::g_b_navigation_record)
		{
			uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
			static float old_PosX, old_PosY, old_PosZ;
			static float new_PosX, new_PosY, new_PosZ;
			if (!BDO::g_b_navigation_record_check)
			{
				old_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
				old_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
				old_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
				BDO::g_b_navigation_record_check = true;
			}
			if (BDO::g_b_navigation_record_check)
			{
				new_PosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
				new_PosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
				new_PosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));
				float distance = sqrt((new_PosX - old_PosX) * (new_PosX - old_PosX) + (new_PosY - old_PosY) * (new_PosY - old_PosY) + (new_PosZ - old_PosZ) * (new_PosZ - old_PosZ));
				if (distance >= 150) //log the position if the distance is at least 150
				{
					fLog("%f, %f, %f, 0, %.0f", new_PosX, new_PosY + 50, new_PosZ, ceil(distance)/*delay is the same as distance*/);
					BDO::g_b_navigation_record_check = false;
				}
			}
		}
		else
			BDO::g_b_navigation_record_check = false;

		uint64_t &local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
		uint64_t &character_control_address = *((uint64_t*)(local_player_address + g_ki32_CharacterController));
		uint64_t &character_scene_address = *((uint64_t*)(character_control_address + g_ki32_CharacterScene));

		//load Lua mod, wait 10seconds before auto load (change last tick)
		if (!BDO::g_b_game_loaded_first_time && BDO::g_b_is_ready_to_play && TimerFunction(10000))
		{
			std::string path = GetDirectoryFile("lua\\");
			std::string listOfLuaMods;
			for (auto& listOfFiles : fs::directory_iterator(path))
			{
				listOfLuaMods = listOfFiles.path().string();
				LuaExecutor("loadfile([[" + listOfLuaMods + "]])()");
			}
			BDO::g_b_game_loaded_first_time = true;
		}

		if (BDO::g_i32_lifeskill_buff == 0)
		{
			//5 bars on all passive lifeskill + crit and luck
			*((int*)(local_player_address + g_ki32_Critical)) = 5;
			*((int*)(local_player_address + g_ki32_Luck)) = 5;
			*((int*)(local_player_address + g_ki32_Fishing)) = 5;
			*((int*)(local_player_address + g_ki32_Gathering)) = 5;
		}
		else if (BDO::g_i32_lifeskill_buff == 1)
		{
			//7 bars on all passive lifeskill + crit and luck
			*((int*)(local_player_address + g_ki32_Critical)) = 7;
			*((int*)(local_player_address + g_ki32_Luck)) = 7;
			*((int*)(local_player_address + g_ki32_Fishing)) = 7;
			*((int*)(local_player_address + g_ki32_Gathering)) = 7;
		}

		if (!BDO::g_b_character_activation || PlayersDetection(BDO::g_b_player_detection_overwrite))
		{
			memcpy(BDO::g_btp_patch_speed, BDO::g_bt_speed_normal, sizeof(BDO::g_bt_speed_normal));
			memcpy(BDO::g_btp_no_cooldown, BDO::g_bt_cooldown_normal, sizeof(BDO::g_bt_cooldown_normal));

			*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = 1.0f; //restore default animation speed

			if (!BDO::g_b_character_activation)
			{
				BDO::g_f_jump_height = *((float*)(character_control_address + g_ki32_JumpHeight)); //restore default jump height
				BDO::g_f_character_animation_speed = 1.0f;
			}
		}
		else
		{
			//movement type
			if (BDO::g_i32_movement_type == 0)
				memcpy(BDO::g_btp_patch_speed, BDO::g_bt_speed_travel, sizeof(BDO::g_bt_speed_travel));
			else if (BDO::g_i32_movement_type == 1)
				memcpy(BDO::g_btp_patch_speed, BDO::g_bt_speed_grind, sizeof(BDO::g_bt_speed_grind));
			else
				memcpy(BDO::g_btp_patch_speed, BDO::g_bt_speed_normal, sizeof(BDO::g_bt_speed_normal));


			if (BDO::g_b_no_cooldown)
				memcpy(BDO::g_btp_no_cooldown, BDO::g_bt_cooldown_reduced, sizeof(BDO::g_bt_cooldown_reduced));
			else
				memcpy(BDO::g_btp_no_cooldown, BDO::g_bt_cooldown_normal, sizeof(BDO::g_bt_cooldown_normal));

			*((float*)(character_control_address + g_ki32_JumpHeight)) = BDO::g_f_jump_height;

			if (BDO::g_b_character_animation_lock)
				*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = FLT_MAX;
			else if (!BDO::g_b_character_animation_lock && entity.AnimationCheck(0, "")) //activate only when attacking
				*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = BDO::g_f_character_animation_speed;
			else
				*((float*)(character_scene_address + g_ki32_CharacterAnimation)) = 1.0f;
		}
	}
}

void ShowMainMenu(bool* panel_open)
{
	ImGui::SetNextWindowSize(ImVec2(500, 495));
	if (ImGui::Begin("Main Menu", panel_open, ImGuiWindowFlags_NoResize))
	{
		if (ImGui::Button("End Game", ImVec2(120, 20)))
		{
			ExitProcess(0);
		}
		ImGui::SameLine();
		if (ImGui::Button("Minimize", ImVec2(120, 20)))
		{
			LuaExecutor(XorStringA("ToClient_CheckTrayIcon()"));
		}
		ImGui::SameLine();
		if (ImGui::Button("Load Mods", ImVec2(120, 20)))
		{
			//lua script/filesystem
			std::string path = GetDirectoryFile("lua\\");
			std::string listOfLuaMods;
			for (auto& listOfFiles : fs::directory_iterator(path))
			{
				listOfLuaMods = listOfFiles.path().string();
				LuaExecutor("loadfile([[" + listOfLuaMods + "]])()");
			}
		}
		ImGui::SameLine();
		if (ImGui::Button("Reload UI", ImVec2(120, 20)))
		{
			LuaExecutor(XorStringA("ToClient_excuteReloadUI()"));
		}

		if (ImGui::CollapsingHeader("Lua Console"))
		{
			static char str0[128];
			ImGui::PushItemWidth(380);
			ImGui::InputText("", str0, IM_ARRAYSIZE(str0));
			ImGui::SameLine();
			if (ImGui::Button("EXECUTE", ImVec2(100, 20)))
			{
				std::string lua_message = str0;
				LuaExecutor(("%s", lua_message.c_str()));
				str0[0] = 0;
			}
			if (ImGui::Button("Revive to Node", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("deadMessage_RevivalExploration_Confirm()"));
			}
			ImGui::SameLine();
			if (ImGui::Button("Revive to Town", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("deadMessage_RevivalVillage_Confirm()"));
			}
			ImGui::SameLine();
			if (ImGui::Button("RBF Suicide", ImVec2(120, 20)))
			{
				std::thread(RBFSuicide).detach();
			}
			ImGui::SameLine();
			if (ImGui::Button("BA Suicide", ImVec2(120, 20)))
			{
				std::thread(BASuicide).detach();
			}
			if (ImGui::Button("WAIT", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("getSelfPlayer():setActionChart('WAIT')"));
			}
			ImGui::SameLine();
			if (ImGui::Button("Mount Inv", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ServantInventory_OpenAll()"));
			}
			ImGui::SameLine();
			if (ImGui::Button("Join RBF", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ToClient_JoinLocalWar()"));
			}
			ImGui::SameLine();
			if (ImGui::Button("Join BA", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("ToClient_JoinPvpBattleGround()"));
			}
		}
		if (ImGui::CollapsingHeader("Character"))
		{
			ImGui::Checkbox("Activation", &BDO::g_b_character_activation);
			ImGui::SameLine();
			ImGui::Checkbox("Overwrite", &BDO::g_b_player_detection_overwrite);
			ImGui::SameLine();
			ImGui::Checkbox("noCD", &BDO::g_b_no_cooldown);
			ImGui::SameLine();
			ImGui::PushItemWidth(100);
			ImGui::Combo("Movement Type", &BDO::g_i32_movement_type, BDO::g_cp_which_movement_type, IM_ARRAYSIZE(BDO::g_cp_which_movement_type));
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::SliderFloat("Super Jump", &BDO::g_f_jump_height, 0.0f, 2500.0f);
			ImGui::SliderFloat("Character Speed", &BDO::g_f_character_animation_speed, 0.0f, 10.0f); //character_speed
			ImGui::Text("Bypass Obstacle");
			if (ImGui::Button("Normal", ImVec2(50, 20)))
			{
				memcpy(BDO::g_btp_bypass_obstacle, BDO::g_bt_obstacle_normal, sizeof(BDO::g_bt_obstacle_normal));
			}
			ImGui::SameLine(0, 5);
			if (ImGui::Button("Wall", ImVec2(50, 20)))
			{
				memcpy(BDO::g_btp_bypass_obstacle, BDO::g_bt_obstacle_wall, sizeof(BDO::g_bt_obstacle_wall));
			}
			ImGui::SameLine(0, 5);
			if (ImGui::Button("Ground", ImVec2(50, 20)))
			{
				memcpy(BDO::g_btp_bypass_obstacle, BDO::g_bt_obstacle_ground, sizeof(BDO::g_bt_obstacle_ground));
			}
			ImGui::SameLine(0, 5);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::Combo("Self Buffs", &BDO::g_i32_lifeskill_buff, BDO::g_cp_which_lifeskill_buff, IM_ARRAYSIZE(BDO::g_cp_which_lifeskill_buff));
		}
		if (ImGui::CollapsingHeader("Grinder"))
		{
			ImGui::Checkbox("Record path", &BDO::g_b_navigation_record);
			ImGui::SameLine();
			ImGui::PushItemWidth(150);
			ImGui::InputInt("Delay", &BDO::g_i32_navigation_delay);
			ImGui::SameLine();
			if (ImGui::Button("Grab WayPoints", ImVec2(185, 20)))
			{
				uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);

				float getPosX = *((float*)(local_player_address + g_ki32_WorldPosition_Self[0]));
				float getPosY = *((float*)(local_player_address + g_ki32_WorldPosition_Self[1]));
				float getPosZ = *((float*)(local_player_address + g_ki32_WorldPosition_Self[2]));

				fLog("%f, %f, %f, 0, %d", getPosX, getPosY, getPosZ, BDO::g_i32_navigation_delay);
			}
			ImGui::Checkbox("Show Waypoints", &BDO::g_b_navigation_show_waypoints);
			ImGui::SameLine(200.0f);
			ImGui::Text("Last WayPoint: %d", BDO::g_i32_navigation_lastpoint);

			//custom profiles loader starts
			static std::vector<std::string>found_profiles;
			if (ImGui::Button("Scan for Profiles", ImVec2(485, 20)))
			{
				found_profiles.clear();
				std::string path = GetDirectoryFile("grind\\");
				for (auto& listOfFiles : fs::directory_iterator(path))
				{
					std::string listOfGrindProfiles = listOfFiles.path().filename().string();

					found_profiles.emplace_back(listOfGrindProfiles);
				}
			}
			static const char* current_item = NULL;
			if (ImGui::BeginCombo("Profiles", current_item)) // The second parameter is the label previewed before opening the combo.
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
			if (ImGui::Button("Load Profile", ImVec2(240, 20)))
			{
				g_v_waypoints_file.clear();
				float ptX, ptY, ptZ;
				int type, delay;

				std::ifstream wptsfin;
				std::string words = "";
				std::string path = GetDirectoryFile("grind\\");
				wptsfin.open(path + current_item, std::ifstream::in);
				while (wptsfin.good())
				{
					wptsfin >> ptX >> words >> ptY >> words >> ptZ >> words >> type >> words >> delay;
					g_v_waypoints_file.emplace_back(ptX, ptY, ptZ, type, delay);
				}
				wptsfin.close();

				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>WayPoints -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
			}

			//custom profiles loader ends
			ImGui::Combo("Grinder Type", &BDO::g_i32_grinder_type, BDO::g_cp_which_grinder_type, IM_ARRAYSIZE(BDO::g_cp_which_grinder_type));
			ImGui::SameLine(252.0f); 
			if (ImGui::Button("Activate", ImVec2(240, 20)))
			{
				BDO::g_b_navigation_activate = true;
				if(BDO::g_i32_grinder_type == 0)
					std::thread(GrinderWalk).detach();
				else
					std::thread(GrinderTeleport).detach();
			}

			ImGui::Checkbox("Activation", &BDO::g_b_navigation_activate);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox("Pause", &BDO::g_b_navigation_pause);
			ImGui::SameLine(300.0f);
			ImGui::Checkbox("Reload Check", &BDO::g_b_navigation_reload_check);

			ImGui::Checkbox("Animation Lock", &BDO::g_b_character_animation_lock);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox("Player Detection", &BDO::g_b_navigation_player_detection);
			ImGui::SameLine(300.0f);
			ImGui::Checkbox("Monsters Detection", &BDO::g_b_navigation_monsters_detection);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::SliderFloat("Monsters Range", &BDO::g_f_monster_range, 300.0f, 700.0f);

			ImGui::Checkbox("pet loot", &BDO::g_b_navigation_pet_loot);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox("Teleport To Loot", &BDO::g_b_navigation_looting);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::SliderFloat("Loot Range", &BDO::g_f_loot_range, 250.0f, 600.0f);
		}
		if (ImGui::CollapsingHeader("Manufacture"))
		{
			ImGui::Checkbox("Activation", &BDO::g_b_auto_manufacture);
			ImGui::SameLine();
			if (ImGui::Button("Load File", ImVec2(100, 20)))
			{
				//find items that can be proecssed
				g_v_manufacture_file.clear();
				uint16_t itemId;
				std::string itemName, procType;
				std::string endReading = "<end>";
				std::string words = "";
				std::ifstream manufacturefin;
				manufacturefin.open(GetDirectoryFile("Manufacture.ini"), std::ifstream::in);
				std::getline(manufacturefin, itemName);
				while (manufacturefin.good())
				{
					std::getline(manufacturefin, itemName, ',');
					if (itemName.find(endReading) != std::string::npos)
						break;
					manufacturefin >> itemId >> words >> procType;
					manufacturefin.ignore(1); //ignore newline
					if (procType == "Shake")
						g_v_manufacture_file.emplace_back(itemName, "SHAKE", BDOEnums::Shake, itemId);
					else if (procType == "Grind")
						g_v_manufacture_file.emplace_back(itemName, "GRIND", BDOEnums::Grind, itemId);
					else if (procType == "Chop")
						g_v_manufacture_file.emplace_back(itemName, "FIREWOOD", BDOEnums::Chop, itemId);
					else if (procType == "Dry")
						g_v_manufacture_file.emplace_back(itemName, "DRY", BDOEnums::Dry, itemId);
					else if (procType == "Filter")
						g_v_manufacture_file.emplace_back(itemName, "THINNING", BDOEnums::Filter, itemId);
					else if (procType == "Heat")
						g_v_manufacture_file.emplace_back(itemName, "HEAT", BDOEnums::Heat, itemId);
				}
				manufacturefin.close();

				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Manufacture Filter -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
			}
			if (ImGui::Button("push", ImVec2(100, 20)))
			{
				g_t_InventoryToWarehouse(0, 2, 10, *((uint32_t*)(g_kuip_PushPopItems))); //inventory to warehouse
			}
			ImGui::SameLine();
			if (ImGui::Button("pull", ImVec2(100, 20)))
			{
				g_t_WarehouseToInventory(2, 10, *((uint32_t*)(g_kuip_PushPopItems))); //warehouse to inventory
			}
			ImGui::SameLine();
			if (ImGui::Button("debug command", ImVec2(100, 20)))
			{
				LuaExecutor(XorStringA("inventoryGrind(2)"));
			}
		}
		if (ImGui::CollapsingHeader("MarketPlace"))
		{
			ImGui::Checkbox("Activation", &BDO::g_b_auto_buy);
			ImGui::SameLine();
			if (ImGui::Button("Show Log", ImVec2(100, 20)))
			{
				BDO::g_b_show_market_log = !BDO::g_b_show_market_log;
			}
			ImGui::SameLine();
			if (ImGui::Button("Load File", ImVec2(100, 20)))
			{
				g_v_market_items.clear();
				std::string l_s_item_name;
				uint32_t l_ui32_item_id;

				std::string l_s_end_of_reading = "<end>";
				std::ifstream marketfin;
				marketfin.open(GetDirectoryFile("MarketItems.ini"), std::ifstream::in);
				while (marketfin.good())
				{
					//Log("pass 1");
					std::getline(marketfin, l_s_item_name, ',');
					//Log("pass 2: %s", l_s_item_name.c_str());
					if (l_s_item_name.find(l_s_end_of_reading) != std::string::npos)
						break;
					marketfin >> l_ui32_item_id;
					//Log("pass 3: %d", l_ui32_item_id);
					marketfin.ignore(1); //ignore newline
					g_v_market_items.emplace_back(l_s_item_name, l_ui32_item_id);
				}
				marketfin.close();

				LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Buy From Market Items File<PAOldColor> - <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
			}
			ImGui::SliderInt("Execution Interval", &BDO::g_i32_execution_interval, 1, 250);
			ImGui::PushItemWidth(225);
			ImGui::Combo("Current Town", &BDO::g_i32_territory_key, BDO::g_cp_which_town, IM_ARRAYSIZE(BDO::g_cp_which_town));
			ImGui::Combo("Wallet Type", &BDO::g_i32_wallet_type, BDO::g_cp_which_wallet, IM_ARRAYSIZE(BDO::g_cp_which_wallet));
			ImGui::Separator();
			ImGui::Checkbox("Auto Sell", &BDO::g_b_auto_sell);
			ImGui::Combo("Sell Type", &BDO::g_i32_sell_type, BDO::g_cp_sell_type, IM_ARRAYSIZE(BDO::g_cp_sell_type));
			if (BDO::g_i32_sell_type == 3)
			{
				ImGui::SameLine();
				ImGui::InputInt("Input Price", &BDO::g_i32_custom_price);
			}
			ImGui::InputInt("Input Target Item Market ID", &BDO::g_i32_market_sell_item_id);
		}
		if (ImGui::CollapsingHeader("Fishing"))
		{
			ImGui::Checkbox("Activation", &BDO::g_b_auto_fishing);
			ImGui::SameLine(150.0f);
			ImGui::Checkbox("Automate Fishing", &BDO::g_b_automate_fishing);
			ImGui::Checkbox("relics only", &BDO::g_b_relics_only);
			ImGui::SameLine(150.0f);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::Combo("Predict Grade", &BDO::g_i32_predictGrade, BDO::g_cp_which_fish_Grade, IM_ARRAYSIZE(BDO::g_cp_which_fish_Grade));
			ImGui::Checkbox("Clear Position", &BDO::g_b_clear_position);

		}
		if (ImGui::CollapsingHeader("Vehicle"))
		{
			ImGui::Checkbox("Activation", &BDO::g_b_vehicle_activation);
			ImGui::SameLine();
			ImGui::Checkbox("Overwrite", &BDO::g_b_player_detection_overwrite);
			ImGui::PushItemWidth(ImGui::GetContentRegionAvailWidth() * 0.65f);
			ImGui::SliderInt("Vehicle Acceleration", &BDO::g_i32_vehicle_accel_slider, 100, 300);
			ImGui::SliderInt("Vehicle Speed", &BDO::g_i32_vehicle_speed_slider, 100, 300);
			ImGui::SliderInt("Vehicle Turn", &BDO::g_i32_vehicle_turn_slider, 100, 500);
			ImGui::SliderInt("Vehicle Brake", &BDO::g_i32_vehicle_brake_slider, 100, 500);
		}
		if (ImGui::CollapsingHeader("Utilities"))
		{
			if (ImGui::Button("Escape", ImVec2(120, 20)))
			{
				LuaExecutor(XorStringA("callRescue()"));
			}
			ImGui::SameLine();
			if (ImGui::Button("Perm. COMPASS", ImVec2(120, 20)))
			{
				PatchNavigation();
			}
			ImGui::Checkbox("Reloaded UI check", &BDO::g_b_reloadedUI_check);
			ImGui::SameLine();
			ImGui::Checkbox("Auto Restore Workers", &BDO::g_b_worker_auto_restore);
			ImGui::SameLine();
			ImGui::Checkbox("Remove Desert Debuff", &BDO::g_b_remove_desert_debuff);
			ImGui::Checkbox("debug", &BDO::g_b_debug);
			ImGui::SameLine();
			if (ImGui::Button("debugTest", ImVec2(100, 20)))
			{
				//std::string testing((char*)((g_kuip_NPCName)));
				//cLog("NPC Name: %s", testing.c_str());
				//std::thread(DebugTest).detach();
				DebugTest();
			}
			ImGui::SameLine();
			if (ImGui::Button("print ani name", ImVec2(100, 20)))
			{
				PrintAnimationIDandNames();
			}
			ImGui::SameLine();
			if (ImGui::Button("Test Lua Hook", ImVec2(100, 20)))
			{
				//LuaPipe("sumtotalWeight", false);
				g_b_lua_pipe_call = true;
				cLog("hp: %d", BDOLuaVariables::currenthp);
			}
			Entity entity;
			if (ImGui::Button("x+5", ImVec2(120, 20)))
			{
				entity.Teleportation(5.0f, 0.0f, 0.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button("x-5", ImVec2(120, 20)))
			{
				entity.Teleportation(-5.0f, 0.0f, 0.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button("z+5", ImVec2(120, 20)))
			{
				entity.Teleportation(0.0f, 0.0f, 5.0f, 1, 1000);
			}
			ImGui::SameLine();
			if (ImGui::Button("z-5", ImVec2(120, 20)))
			{
				entity.Teleportation(0.0f, 0.0f, -5.0f, 1, 1000);
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
	ImGui::SetNextWindowSize(ImVec2(340, 180));
	if (ImGui::Begin("ESP", panel_open, ImGuiWindowFlags_NoResize))
	{
		ImGui::Combo("ESP Target", &BDO::g_i32_esp_target, BDO::g_cp_which_ESP_target, IM_ARRAYSIZE(BDO::g_cp_which_ESP_target));
		ImGui::SliderInt("Draw Interval", &BDO::g_i32_esp_draw_interval, 0, 15);
		if (ImGui::Button("Load ESP Targets File", ImVec2(300, 20)))
		{
			g_um_esp_actor_id.clear();
			std::string l_s_target_name;
			uint32_t l_ui32_target_id;

			std::string l_s_end_of_reading = "<end>";
			std::ifstream espfin;
			espfin.open(GetDirectoryFile("ESPTargets.ini"), std::ifstream::in);
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

			LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>ESP Targets -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>')"));
		}
		ImGui::Checkbox("ESP", &BDO::g_b_show_esp);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox("WorldMap", &BDO::g_b_show_world_map);

		ImGui::Checkbox("Line", &BDO::g_b_show_esp_line);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox("Circle", &BDO::g_b_show_esp_circle);
		ImGui::SameLine(200.0f);
		ImGui::Checkbox("Name", &BDO::g_b_show_esp_name);

		ImGui::Checkbox("ID", &BDO::g_b_show_esp_id);
		ImGui::SameLine(100.0f);
		ImGui::Checkbox("Level", &BDO::g_b_show_esp_level);
		ImGui::SameLine(200.0f);
		ImGui::Checkbox("Distance", &BDO::g_b_show_esp_distance);
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

	if (BDO::g_b_cam_activation)
	{
		//camera
		if (BDO::g_b_cam_advanced)
		{
			*((float*)(camAddress + 0x5C)) = BDO::g_f_cam_view1;
			*((float*)(camAddress + 0x68)) = BDO::g_f_cam_view2;
		}
		else
		{
			BDO::g_f_cam_view1 = *((float*)(camAddress + 0x5C));
			BDO::g_f_cam_view2 = *((float*)(camAddress + 0x68));
		}
		*((float*)(camAddress + 0x70)) = BDO::g_f_cam_view3;
		*((float*)(camAddress + 0x74)) = BDO::g_f_cam_view4;

		//screenshot
		*((float*)(camAddress + 0xA4)) = BDO::g_f_cam_screenshot1;
		*((float*)(camAddress + 0xA8)) = BDO::g_f_cam_screenshot2;
		*((float*)(camAddress + 0xAC)) = BDO::g_f_cam_screenshot3;
		*((float*)(camAddress + 0xC8)) = BDO::g_f_cam_screenshot4;
		*((float*)(camAddress + 0xD0)) = BDO::g_f_cam_screenshot5;
	}
	else
	{
		//camera
		BDO::g_f_cam_view1 = *((float*)(camAddress + 0x5C));
		BDO::g_f_cam_view2 = *((float*)(camAddress + 0x68));
		BDO::g_f_cam_view3 = *((float*)(camAddress + 0x70));
		BDO::g_f_cam_view4 = *((float*)(camAddress + 0x74));

		//screenshot
		BDO::g_f_cam_screenshot1 = *((float*)(camAddress + 0xA4));
		BDO::g_f_cam_screenshot2 = *((float*)(camAddress + 0xA8));
		BDO::g_f_cam_screenshot3 = *((float*)(camAddress + 0xAC));
		BDO::g_f_cam_screenshot4 = *((float*)(camAddress + 0xC8));
		BDO::g_f_cam_screenshot5 = *((float*)(camAddress + 0xD0));
	}

	ImGui::SetNextWindowSize(ImVec2(250, 275));
	if (ImGui::Begin("Screenshot Uitility", panel_open, ImGuiWindowFlags_NoResize))
	{
		ImGui::Checkbox("Activation", &BDO::g_b_cam_activation);
		ImGui::SameLine(0, 38.5f);
		ImGui::Checkbox("Advanced", &BDO::g_b_cam_advanced);
		ImGui::PushItemWidth(150);
		ImGui::SliderFloat("Cam 1", &BDO::g_f_cam_view1, -2, 2);
		ImGui::SliderFloat("Cam 2", &BDO::g_f_cam_view2, -3.5f, 3.5f);
		ImGui::SliderFloat("Cam 3", &BDO::g_f_cam_view3, -1, 1);
		ImGui::SliderFloat("Cam 4", &BDO::g_f_cam_view4, -1, 1);
		ImGui::SliderFloat("Screenshot 1", &BDO::g_f_cam_screenshot1, -40, 40);
		ImGui::SliderFloat("Screenshot 2", &BDO::g_f_cam_screenshot2, -40, 40);
		ImGui::SliderFloat("Screenshot 3", &BDO::g_f_cam_screenshot3, -40, 40);
		ImGui::SliderFloat("Screenshot 4", &BDO::g_f_cam_screenshot4, -40, 40);
		ImGui::SliderFloat("Screenshot 5", &BDO::g_f_cam_screenshot5, -40, 40);
	}
	ImGui::End();
}
void ShowDebugMenu(bool* panel_open)
{
	//ImGui::SetNextWindowSize(ImVec2(225, 180)); dont need this if use auto resize
	if (ImGui::Begin("Debugging", panel_open, ImGuiWindowFlags_AlwaysAutoResize))
	{
		//save system variables
		if (ImGui::Button("Save System Variables", ImVec2(200, 20)))
		{
			uint64_t systemVariables_name = ((uint64_t)g_kuip_SystemVariables + 0x18);
			uint64_t systemVariables_bool = ((uint64_t)g_kuip_SystemVariables + 0x08);
			uint64_t systemVariables_FloatInt = ((uint64_t)g_kuip_SystemVariables + 0x10);

			std::ofstream fout;
			fout.open(GetDirectoryFile("SystemVariables.ini"), std::ios::trunc);
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

				fout << "Name: " << l_s_name << " Enabled: " << l_b_is_enabled << " ValueInt: " << l_i32_interger_value << " ValueFloat: " << l_f_float_value << '\n';
				if (l_s_name == "_use_object_loadrange")
					break;

				systemVariables_name += 0x20;
				systemVariables_bool += 0x20;
				systemVariables_FloatInt += 0x20;
			}
			fout.close();
		}
		//load system variables
		if (ImGui::Button("Load System Variables", ImVec2(200, 20)))
		{
			std::string l_s_name;
			bool l_b_is_enabled;
			int l_i32_interger_value;
			float l_f_float_value;

			uint64_t systemVariables_bool = ((uint64_t)g_kuip_SystemVariables + 0x08);
			uint64_t systemVariables_FloatInt = ((uint64_t)g_kuip_SystemVariables + 0x10);

			std::ifstream fin;
			std::string words = "";
			fin.open(GetDirectoryFile("SystemVariables.ini"), std::ifstream::in);
			for (uint16_t counter = 0; counter < 600; counter++)
			{
				fin >> words >> l_s_name >> words >> l_b_is_enabled >> words >> l_i32_interger_value >> words >> l_f_float_value;
				*((bool*)(systemVariables_bool)) = l_b_is_enabled;
				*((int*)(systemVariables_FloatInt)) = l_i32_interger_value;
				*((float*)(systemVariables_FloatInt)) = l_f_float_value;
				if (l_s_name == "_use_object_loadrange")
				{
					break;
				}
				systemVariables_bool += 0x20;
				systemVariables_FloatInt += 0x20;
			}
			fin.close();
		}
		//dump inventory
		if (ImGui::Button("Dump Inventory", ImVec2(200, 20)))
		{
			DumpInventory(1);
		}
		//dump warehouse
		if (ImGui::Button("Dump Warehouse", ImVec2(200, 20)))
		{
			DumpWarehouse(1);
		}
		//dump marketplace
		if (ImGui::Button("Dump MarketPlace", ImVec2(200, 20)))
		{
			std::thread(DumpMarketplace, 1).detach();
		}
		//check for multi-threading
		if (ImGui::Button("Get CPU ID", ImVec2(200, 20)))
		{
			uint32_t cpuid_regs[BDOEnums::CPUID_ARRAY_SIZE];
			__cpuid((int32_t*)cpuid_regs, 1);

			cLog("%d", cpuid_regs[BDOEnums::CPUID_EBX] >> 24);
		}
		//unhook
		if (ImGui::Button("UNHOOK", ImVec2(200, 20)))
		{
			if (BDO::g_b_show_console) //prevent crash
				BDO::g_b_show_console = false;
			DisableThreadLibraryCalls(BDO::g_hmodule_dllModule);
			CreateThread(0, 0, (LPTHREAD_START_ROUTINE)UnhookMe, BDO::g_hmodule_dllModule, 0, 0);
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
	if (BDO::g_b_show_console)
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
	ImGui::SetNextWindowBgAlpha(0.5f); // Transparent background	
	if (ImGui::Begin("CRIMSON DESERT", &l_b_show_menu, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_AlwaysAutoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoFocusOnAppearing | ImGuiWindowFlags_NoNav))
	{
		if (ImGui::BeginMenu("CRIMSON DESERT"))
		{
			ImGui::MenuItem("Main Menu", NULL, &l_b_show_menuWindow);
			ImGui::MenuItem("Show FPS", NULL, &l_b_show_fps);
			ImGui::MenuItem("Show ESP", NULL, &l_b_show_esp);
			ImGui::MenuItem("Screenshot", NULL, &l_b_camera_screenshot);
			ImGui::MenuItem("Debug window", NULL, &l_b_show_debug_menu);
			ImGui::MenuItem("Log Console", NULL, &BDO::g_b_show_console);
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
	style.WindowBorderSize = 0.0f; //create an overlay with no border
	ImGui::Begin("BackBuffer", reinterpret_cast<bool*>(true), ImVec2(0, 0), 0.0f, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoInputs);

	ImGui::SetWindowPos(ImVec2(0, 0), ImGuiSetCond_Always);
	ImGui::SetWindowSize(ImVec2(ImGui::GetIO().DisplaySize.x, ImGui::GetIO().DisplaySize.y), ImGuiSetCond_Always);
}

void RenderScene()
{
	ImGuiStyle* style = &ImGui::GetStyle();
	ImVec4* colors = style->Colors;

	colors[ImGuiCol_Text] = ImVec4(1.00f, 1.00f, 1.00f, 1.00f);
	colors[ImGuiCol_TextDisabled] = ImVec4(0.50f, 0.50f, 0.50f, 1.00f);
	colors[ImGuiCol_WindowBg] = ImVec4(0.06f, 0.06f, 0.06f, 0.94f);
	colors[ImGuiCol_ChildBg] = ImVec4(1.00f, 1.00f, 1.00f, 0.00f);
	colors[ImGuiCol_PopupBg] = ImVec4(0.08f, 0.08f, 0.08f, 0.94f);
	colors[ImGuiCol_Border] = ImVec4(0.43f, 0.43f, 0.50f, 0.50f);
	colors[ImGuiCol_BorderShadow] = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
	colors[ImGuiCol_FrameBg] = ImVec4(0.16f, 0.29f, 0.48f, 0.54f);
	colors[ImGuiCol_FrameBgHovered] = ImVec4(0.26f, 0.59f, 0.98f, 0.40f);
	colors[ImGuiCol_FrameBgActive] = ImVec4(0.26f, 0.59f, 0.98f, 0.67f);
	colors[ImGuiCol_TitleBg] = ImVec4(0.04f, 0.04f, 0.04f, 1.00f);
	colors[ImGuiCol_TitleBgActive] = ImVec4(0.16f, 0.29f, 0.48f, 1.00f);
	colors[ImGuiCol_TitleBgCollapsed] = ImVec4(0.00f, 0.00f, 0.00f, 0.51f);
	colors[ImGuiCol_MenuBarBg] = ImVec4(0.14f, 0.14f, 0.14f, 1.00f);
	colors[ImGuiCol_ScrollbarBg] = ImVec4(0.02f, 0.02f, 0.02f, 0.53f);
	colors[ImGuiCol_ScrollbarGrab] = ImVec4(0.31f, 0.31f, 0.31f, 1.00f);
	colors[ImGuiCol_ScrollbarGrabHovered] = ImVec4(0.41f, 0.41f, 0.41f, 1.00f);
	colors[ImGuiCol_ScrollbarGrabActive] = ImVec4(0.51f, 0.51f, 0.51f, 1.00f);
	colors[ImGuiCol_CheckMark] = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
	colors[ImGuiCol_SliderGrab] = ImVec4(0.24f, 0.52f, 0.88f, 1.00f);
	colors[ImGuiCol_SliderGrabActive] = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
	colors[ImGuiCol_Button] = ImVec4(0.26f, 0.59f, 0.98f, 0.40f);
	colors[ImGuiCol_ButtonHovered] = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
	colors[ImGuiCol_ButtonActive] = ImVec4(0.06f, 0.53f, 0.98f, 1.00f);
	colors[ImGuiCol_Header] = ImVec4(0.40f, 0.40f, 0.90f, 0.45f);
	colors[ImGuiCol_HeaderHovered] = ImVec4(0.45f, 0.45f, 0.90f, 0.80f);
	colors[ImGuiCol_HeaderActive] = ImVec4(0.53f, 0.53f, 0.87f, 0.80f);
	colors[ImGuiCol_Separator] = colors[ImGuiCol_Border];//ImVec4(0.61f, 0.61f, 0.61f, 1.00f);
	colors[ImGuiCol_SeparatorHovered] = ImVec4(0.10f, 0.40f, 0.75f, 0.78f);
	colors[ImGuiCol_SeparatorActive] = ImVec4(0.10f, 0.40f, 0.75f, 1.00f);
	colors[ImGuiCol_ResizeGrip] = ImVec4(0.26f, 0.59f, 0.98f, 0.25f);
	colors[ImGuiCol_ResizeGripHovered] = ImVec4(0.26f, 0.59f, 0.98f, 0.67f);
	colors[ImGuiCol_ResizeGripActive] = ImVec4(0.26f, 0.59f, 0.98f, 0.95f);
	colors[ImGuiCol_CloseButton] = ImVec4(0.41f, 0.41f, 0.41f, 0.50f);
	colors[ImGuiCol_CloseButtonHovered] = ImVec4(0.98f, 0.39f, 0.36f, 1.00f);
	colors[ImGuiCol_CloseButtonActive] = ImVec4(0.98f, 0.39f, 0.36f, 1.00f);
	colors[ImGuiCol_PlotLines] = ImVec4(0.61f, 0.61f, 0.61f, 1.00f);
	colors[ImGuiCol_PlotLinesHovered] = ImVec4(1.00f, 0.43f, 0.35f, 1.00f);
	colors[ImGuiCol_PlotHistogram] = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
	colors[ImGuiCol_PlotHistogramHovered] = ImVec4(1.00f, 0.60f, 0.00f, 1.00f);
	colors[ImGuiCol_TextSelectedBg] = ImVec4(0.26f, 0.59f, 0.98f, 0.35f);
	colors[ImGuiCol_ModalWindowDarkening] = ImVec4(0.80f, 0.80f, 0.80f, 0.35f);
	colors[ImGuiCol_DragDropTarget] = ImVec4(1.00f, 1.00f, 0.00f, 0.90f);
	colors[ImGuiCol_NavHighlight] = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
	colors[ImGuiCol_NavWindowingHighlight] = ImVec4(1.00f, 1.00f, 1.00f, 0.70f);

	DrawMainPanel();

	MarketSystem();
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