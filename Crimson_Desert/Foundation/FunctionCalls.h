#pragma once
#include "Addresses.h"

//game use fastcall instead of stdcall
typedef void(__stdcall* RequestItemMarketSellInfo)(uint32_t territory_key, uint32_t item_key); //, bool unk_1 = false
typedef int32_t(__stdcall* GetItemMarketSellInfoInClientCount)(uint32_t territory_key, uint32_t item_key);
typedef uint64_t(__stdcall* GetItemMarketSellInfoInClientByIndex)(uint32_t territory_key, uint32_t item_key, uint32_t slot_index);
typedef void(__stdcall* RequestBuyItemForItemMarket)(uint32_t wallet_type, uint32_t item_key, uint32_t slot_index, uint32_t amount); //, uint64_t unk_1 = 0
typedef bool(__stdcall* IsBiddingItem)(uint64_t sell_info_address);
typedef bool(__stdcall* IsBiddingJoinTime)(uint64_t sell_info_address);
typedef uint64_t(__stdcall* GetItemMarketID)(uint64_t sell_info_address);
typedef bool(__stdcall* IsBiddingJoinItem)(uint64_t item_market_no);
typedef uint64_t(__stdcall* GetOnePrice)(uint64_t sell_info_address);
typedef uint64_t(__stdcall* WarehouseMoneyFromNPCShop)();

RequestItemMarketSellInfo g_t_RequestItemMarketSellInfo = reinterpret_cast<RequestItemMarketSellInfo>(g_kuip_RequestItemMarketSellInfo);
GetItemMarketSellInfoInClientCount g_t_GetItemMarketSellInfoInClientCount = reinterpret_cast<GetItemMarketSellInfoInClientCount>(g_kuip_GetItemMarketSellInfoClientCount);
GetItemMarketSellInfoInClientByIndex g_t_GetItemMarketSellInfoInClientByIndex = reinterpret_cast<GetItemMarketSellInfoInClientByIndex>(g_kuip_GetItemMarketSellInfoInClientByIndex);
RequestBuyItemForItemMarket g_t_RequestBuyItemForItemMarket = reinterpret_cast<RequestBuyItemForItemMarket>(g_kuip_RequestBuyItemForItemMarket);
IsBiddingItem g_t_IsBiddingItem = reinterpret_cast<IsBiddingItem>(g_kuip_IsBiddingItem);
IsBiddingJoinTime g_t_IsBiddingJoinTime = reinterpret_cast<IsBiddingJoinTime>(g_kuip_IsBiddingJoinTime);
GetItemMarketID g_t_GetItemMarketNo = reinterpret_cast<GetItemMarketID>(g_kuip_GetItemMarket_ID);
IsBiddingJoinItem g_t_IsBiddingJoinItem = reinterpret_cast<IsBiddingJoinItem>(g_kuip_IsBiddingJoinItem);
GetOnePrice g_t_GetOnePrice = reinterpret_cast<GetOnePrice>(g_kuip_GetOnePrice);
WarehouseMoneyFromNPCShop g_t_WarehouseMoneyFromNPCShop = reinterpret_cast<WarehouseMoneyFromNPCShop>(g_kuip_WareHouseMoneyFrom_NPC_Shop);

//request drop items for autoloot
typedef uint64_t(__stdcall* RequestDroppedItems)(uint64_t local_player, uint64_t loot_actor);
RequestDroppedItems g_t_RequestDroppedItems = reinterpret_cast<RequestDroppedItems>(g_kuip_RequestDroppedItems);

//use inventory item
typedef uint64_t(__stdcall* UseInventoryItem)(uint8_t from_where, uint8_t slot); //, uint8_t c <- how many but you can only use 1 item at a time so its useless to add in
UseInventoryItem g_t_UseInventoryItem = reinterpret_cast<UseInventoryItem>(g_kuip_UseInventoryItem);  //(fromWhere, slotNo) = (0, 2) = 1st slot, (0, 3) 2nd slot, etc

//warehouse to inventory
typedef uint64_t(__stdcall* WarehouseToInventory)(uint8_t slot, uint64_t amount, uint32_t unk_1); //, unk_1 = g_kuip_PushPopItems
WarehouseToInventory g_t_WarehouseToInventory = reinterpret_cast<WarehouseToInventory>(g_kuip_WarehouseToInventory);

//inventory to warehouse
typedef uint64_t(__stdcall* InventoryToWarehouse)(uint64_t unk_1, uint64_t slot, uint64_t amount, uint32_t unk_2); //unk_1 = 0, unk_2 = g_kuip_PushPopItems
InventoryToWarehouse g_t_InventoryToWarehouse = reinterpret_cast<InventoryToWarehouse>(g_kuip_InventoryToWarehouse);

//sell item at item market
typedef uint64_t(__stdcall* SellItemsToMarketplace)(uint8_t from_where, uint64_t slot, uint8_t amount, uint32_t price_each);
SellItemsToMarketplace g_t_SellItemsToMarketplace = reinterpret_cast<SellItemsToMarketplace>(g_kuip_SellItemAtItemMarket);

//move actor to actor (mount to character)
//typedef uint64_t(__stdcall* MoveItemActorToActor)(int32_t from_where, int32_t to_where, uint8_t type, uint8_t slot, int64_t amount);
//static MoveItemActorToActor g_t_MoveItemActorToActor = reinterpret_cast<MoveItemActorToActor>(g_kuip_MoveItemActorToActor);
//static MoveItemActorToActor g_t_MoveItemActorToActorNull = NULL;
//uint64_t MoveItemActorToActorHook(int32_t from_where, int32_t to_where, uint8_t type, uint8_t slot, int64_t amount)
//{
//	cLog("from: %d, to: %d, type: %d, slot: %d, amount: %d", from_where, to_where, type, slot, amount);
//
//	return g_t_MoveItemActorToActorNull(from_where, to_where, type, slot, amount);
//}

//world map navi start (doesn't do shit)
//typedef uint64_t(__stdcall* WorldMapNaviStart)(float destination[], bool isAuto, int someValue); //a = 0
//static WorldMapNaviStart g_v_world_map_navi_start = reinterpret_cast<WorldMapNaviStart>(g_kuip_WorldMapNaviStart);
//float pos[3] = { 46248.929688, -3044.798828, -48136.585938 };
//g_v_world_map_navi_start(pos, 1, 0);