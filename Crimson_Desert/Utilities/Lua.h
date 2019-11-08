#pragma once
#include <fstream>
#include <vector>

#include "Logs.h"
#pragma comment(lib, "Library/lua5.1.lib")
#include "Library/lua.hpp"
#include "Library/sol.hpp"

std::vector<std::string> g_v_queued_lua_code;
std::unordered_map<std::string, bool> g_um_lua_pipe_call;
bool g_b_lua_pipe_call;

typedef uint64_t(__stdcall* tLuaDostring)(const lua_State* L, const char* string, int64_t string_length);
tLuaDostring g_pLuaDostring = (tLuaDostring)g_kuip_LuaDostring;
tLuaDostring g_pLuaDostringDetour = NULL;
uint64_t LuaDostringDetour(const lua_State* L, const char* string, int64_t string_length)
{
	std::string reloadUI_check = string;
	if (reloadUI_check.find("preLoadGameUI") != std::string::npos || reloadUI_check.find("loadLoadingUI") != std::string::npos)
	{
		BDO::g_bReloadedUI = true;
	}

	//cLog("%s", string);

	return g_pLuaDostringDetour(L, string, string_length);
}

typedef uint64_t(__stdcall* tLuaGettop)(lua_State* L);
tLuaGettop g_pLuaGettop = reinterpret_cast<tLuaGettop>(g_kuip_LuaGettop);
tLuaGettop g_pLuaGettopDetour = NULL;
uint64_t LuaGettopDetour(lua_State* L)
{
	if (g_v_queued_lua_code.size() > 0 && BDO::g_ui64LastTick + 100 <= GetTickCount64())
	{
		BDO::g_ui64LastTick = GetTickCount64();

		std::string luaCode;
		for (const auto& targetLuaCode : g_v_queued_lua_code)
		{
			luaCode += targetLuaCode;
		}

		g_pLuaDostring(L, luaCode.c_str(), luaCode.length());

		try
		{
			g_v_queued_lua_code.clear();
		}
		catch (std::exception& e)
		{
			cLog("Error: %s", e);
		}
	}

	if (g_um_lua_pipe_call.size() > 0)
	{
		//initiating state_view
		sol::state_view lua(L);

		//get path
		std::string l_s_file_path = GetDirectoryFile("script.lua");

		//load the script onto global table
		lua.script_file(l_s_file_path);

		//return value from the Lua Pipe function
		for (auto& pipe_calls : g_um_lua_pipe_call)
		{
			sol::load_result value = lua.load("return " + pipe_calls.first);
			if (pipe_calls.second)
			{
				std::string return_string = value();
				cLog("String: %s", return_string.c_str());
			}
			else
			{
				int return_value = value();
				cLog("Value: %d", return_value);
			}
		}

		/*
		//can either return original game value or custom script value
		sol::load_result getHP = lua.load("return getSelfPlayer():get():getHp()"); //game original value
		sol::load_result sumtotalWeight = lua.load("return sumtotalWeight"); //custom script value
		// execute, get return value
		int currentHP = getHP();
		int weightpercentage = sumtotalWeight();
		cLog("Hp: %d", currentHP);
		cLog("Weight: %d", weightpercentage);

		//can either call original game function or custom script function
		//try use the lua console before using this, possible crash!
		lua.script("FreeMem()"); //call custom script collect garbage function
		*/

		g_um_lua_pipe_call.clear();
	}

	if (g_b_lua_pipe_call)
	{
		g_b_lua_pipe_call = false;

		//initilize the game's lua state using state_view
		sol::state_view lua(L);

		//load the "script.lua" script onto global table
		lua.script_file(GetDirectoryFile("script.lua"));

		//can either return original game value or custom script value
		//sol::load_result getHP = lua.load("return getSelfPlayer():get():getHp()"); //game original value
		//sol::load_result sumtotalWeight = lua.load("return sumtotalWeight"); //custom script value
		//sol::load_result FishGrade = lua.load("return FishGrade");
		//sol::load_result fishLevel = lua.load("return fishLevel");
		//sol::load_result currenthp = lua.load("return currenthp");
		//sol::load_result maxhp = lua.load("return maxhp");
		//sol::load_result currentmp = lua.load("return currentmp");
		//sol::load_result maxmp = lua.load("return maxmp");
		//sol::load_result currentWP = lua.load("return currentWP");
		//sol::load_result currentMaxWp = lua.load("return currentMaxWp");
		//sol::load_result freeInventoryCount = lua.load("return freeInventoryCount");
		//sol::load_result maxInventoryCount = lua.load("return maxInventoryCount");
		//sol::load_result invenSize = lua.load("return invenSize");
		//sol::load_result userNo = lua.load("return userNo");
		//sol::load_result playerLevel = lua.load("return playerLevel");
		//sol::load_result expRate = lua.load("return expRate");
		//sol::load_result silverInInventory = lua.load("return silverInInventory");
		sol::load_result sumtotalWeight = lua.load("return sumtotalWeight");
		//sol::load_result isFreeArea = lua.load("return isFreeArea");
		//sol::load_result isSafeZone = lua.load("return isSafeZone");
		//sol::load_result playerPosX = lua.load("return playerPosX");
		//sol::load_result playerPosY = lua.load("return playerPosY");
		//sol::load_result playerPosZ = lua.load("return playerPosZ");
		//sol::load_result userNickName = lua.load("return userNickName");
		//sol::load_result registListCount = lua.load("return registListCount");
		//sol::load_result isGhosting = lua.load("return isGhosting");
		//sol::load_result freeRevivalLevel = lua.load("return freeRevivalLevel");
		// execute, get return value
		//BDOLuaVariables::FishGrade = FishGrade();
		//BDOLuaVariables::fishLevel = fishLevel();
		//BDOLuaVariables::currenthp = currenthp();
		//BDOLuaVariables::maxhp = maxhp();
		//BDOLuaVariables::currentmp = currentmp();
		//BDOLuaVariables::maxmp = maxmp();
		//BDOLuaVariables::currentWP = currentWP();
		//BDOLuaVariables::currentMaxWp = currentMaxWp();
		//BDOLuaVariables::freeInventoryCount = freeInventoryCount();
		//BDOLuaVariables::maxInventoryCount = maxInventoryCount();
		//BDOLuaVariables::invenSize = invenSize();
		//BDOLuaVariables::userNo = userNo();
		//BDOLuaVariables::playerLevel = playerLevel();
		//BDOLuaVariables::expRate = expRate();
		//BDOLuaVariables::silverInInventory = silverInInventory();
		BDOLuaVariables::sumtotalWeight = sumtotalWeight();
		//BDOLuaVariables::isFreeArea = isFreeArea();
		//BDOLuaVariables::isSafeZone = isSafeZone();
		//BDOLuaVariables::playerPosX = playerPosX();
		//BDOLuaVariables::playerPosY = playerPosY();
		//BDOLuaVariables::playerPosZ = playerPosZ();
		//BDOLuaVariables::userNickName = userNickName();
		//BDOLuaVariables::userNickName = lua["get_item_name"](5);
		//BDOLuaVariables::registListCount = registListCount();
		//BDOLuaVariables::isGhosting = isGhosting();
		//BDOLuaVariables::freeRevivalLevel = freeRevivalLevel();

		//can either call original game function or custom script function
		//try use the lua console before using this, possible crash!
		//lua.script("FreeMem()"); //call custom script collect garbage function
	}

	return g_pLuaGettopDetour(L);
}

void LuaExecutor(const std::string& string)
{
	g_v_queued_lua_code.emplace_back(string);
}

void LuaPipe(const std::string& string, const bool& is_string)
{
	g_um_lua_pipe_call.emplace(string, is_string);
}