#pragma once
#include <cstdint>

constexpr uintptr_t g_kuip_CurrentVehicle							= 0x1434FB190;
constexpr uintptr_t g_kuip_PassThroughObstacle						= 0x1415C7A65;
constexpr uintptr_t g_kuip_RequestDroppedItems						= 0x1408EECF0;
constexpr uintptr_t g_kuip_PatchWindowFocus							= 0x1402005AF;
constexpr uintptr_t g_kuip_PushPopItems								= 0x14334AD1C; //for push and receive items from warehouse npc
constexpr uintptr_t g_kuip_SpeedNullifier							= 0x1409ECB0C;
constexpr uintptr_t g_kuip_NoCooldown								= 0x1407E1378;
constexpr uintptr_t g_kuip_PatchPetSystem							= 0x14037864B;

//market
constexpr uintptr_t g_kuip_RequestItemMarketSellInfo				= 0x14050C2A0;
constexpr uintptr_t g_kuip_GetItemMarketSellInfoClientCount			= 0x14050C110;
constexpr uintptr_t g_kuip_GetItemMarketSellInfoInClientByIndex		= 0x14050C140;
constexpr uintptr_t g_kuip_RequestBuyItemForItemMarket				= 0x14050C670;
constexpr uintptr_t g_kuip_IsBiddingItem							= 0x1403FE450;
constexpr uintptr_t g_kuip_IsBiddingJoinTime						= 0x1403FE490;
constexpr uintptr_t g_kuip_GetItemMarket_ID							= 0x140201DE0;
constexpr uintptr_t g_kuip_IsBiddingJoinItem						= 0x14050D350;
constexpr uintptr_t g_kuip_GetOnePrice								= 0x140334930;
constexpr uintptr_t g_kuip_WareHouseMoneyFrom_NPC_Shop				= 0x14072FB60;
//140489AF0

//yoinked
constexpr uintptr_t g_kuip_LocalPlayer								= 0x1434FAE68;
constexpr uintptr_t g_kuip_ActorList								= 0x1434FAA28;
//constexpr uintptr_t g_kuip_TickBase								= 0x1432E41D0;
//constexpr uintptr_t g_kuip_UI_Base								= 0x1431DB858;
constexpr uintptr_t g_kuip_MainWindowBase							= 0x1434B7A00;
constexpr uintptr_t g_kuip_RegionInfoManager						= 0x1435F4F40;
constexpr uintptr_t g_kuip_WorkerList								= 0x1434A3F30;
constexpr uintptr_t g_kuip_MarketBase								= 0x1434A4950;
constexpr uintptr_t g_kuip_ViewMatrix								= 0x143F63E70;
constexpr uintptr_t g_kuip_Base										= 0x14345DD80;
constexpr uintptr_t g_kuip_CurrentWarehouse							= 0x143F59D18;
//constexpr uintptr_t g_kuip_LootBase								= 0x14324BAC8;
//constexpr uintptr_t g_kuip_GuildQuestBas							= 0x143255870;
constexpr uintptr_t g_kuip_SystemVariables							= 0x143351C20;

constexpr uintptr_t g_kuip_WarehouseToInventory						= 0x1407306C0; //warehouse_popToInventoryByNpc
constexpr uintptr_t g_kuip_InventoryToWarehouse						= 0x140730130; //warehouse_pushFromInventoryItemByNpc

//constexpr uintptr_t g_kuip_MoveItemActorToActor					= 0x14060EBC0; //could be wrong
//constexpr uintptr_t g_kuip_LootPickItems							= 0x1405F7F60;
//constexpr uintptr_t g_kuip_LootSlotClick							= 0x1405F83C0;
constexpr uintptr_t g_kuip_UseInventoryItem							= 0x1406D0650;
constexpr uintptr_t g_kuip_SellItemAtItemMarket						= 0x14050C470;
//constexpr uintptr_t g_kuip_WorldMapNaviStart						= 0x140958B30;
constexpr uintptr_t g_kuip_GetKeyInputStatePressed					= 0x141354970;
//constexpr uintptr_t g_kuip_CryptoRabbit							= 0x140A20D60;
//constexpr uintptr_t g_kuip_CheckWindowFocus						= 0x1401D07DF;

constexpr uintptr_t g_kuip_StringTable_ASCII						= 0x14345F328;
constexpr uintptr_t g_kuip_StringTable_UNICODE						= 0x14345F2F8;

//constexpr uintptr_t g_kuip_LootIdentifier							= 0x1407FBFB0;
//constexpr uintptr_t g_kuip_ClearInput								= 0x1411B4E10;
constexpr uintptr_t g_kuip_LuaGettop								= 0x141808C90;
constexpr uintptr_t g_kuip_LuaDostring								= 0x140FD4220;
//constexpr uintptr_t g_kuip_LuaLoadbuffer							= 0x1416D14D0;
//constexpr uintptr_t g_kuip_LuaPcall								= 0x141669340;
//constexpr uintptr_t g_kuip_LuaSettop								= 0x1416BE830;
//constexpr uintptr_t g_kuip_LuaType								= 0x141669F70;
//constexpr uintptr_t g_kuip_LuaTostring							= 0x141669DC0;
//constexpr uintptr_t g_kuip_LuaToboolean							= 0x141669D30;
//constexpr uintptr_t g_kuip_LuaTonumber							= 0x141669E60;
//constexpr uintptr_t g_kuip_Test									= 0x14033A850;