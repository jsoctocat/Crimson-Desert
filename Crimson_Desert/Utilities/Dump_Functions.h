#pragma once
#include "Foundation/Addresses.h"
#include "Foundation/Offsets.h"
#include "Utilities/Logs.h"

#include <vector>
#include <string>
#include <fstream> // store file
#include <iomanip> // std::setw
#include <codecvt> //make foreign letters writable

class ItemData
{
public:
	std::wstring m_ws_name;
	uint8_t m_ui8_enhancement_level;
	uint16_t m_ui16_item_id, m_ui16_max_registerable_count;
	uint32_t m_ui32_market_item_index, m_ui32_npc_repair_price;

	ItemData(uint16_t item_id, std::wstring name, uint32_t market_item_index, uint8_t enhancement_level, uint32_t npc_repair_price, uint16_t max_registerable_count)
		: m_ui16_item_id(item_id), m_ws_name(name), m_ui32_market_item_index(market_item_index), m_ui8_enhancement_level(enhancement_level), m_ui32_npc_repair_price(npc_repair_price), m_ui16_max_registerable_count(max_registerable_count)
	{
	}
};

class PlayerInventory
{
public:
	uint64_t m_ui64_address;
	uint8_t m_ui8_slot;

	PlayerInventory(uint64_t address, uint8_t slot)
		: m_ui64_address(address), m_ui8_slot(slot)
	{
	}
};
class PlayerInventoryItem
{
public:
	uint64_t m_ui64_itemdata;
	uint32_t m_i32_itemcount;
	uint16_t m_i16_current_durability, m_i16_max_durability;

	PlayerInventoryItem(uint64_t itemdata, uint32_t itemcount, uint16_t current_durability, uint16_t max_durability)
		: m_ui64_itemdata(itemdata), m_i32_itemcount(itemcount), m_i16_current_durability(current_durability), m_i16_max_durability(max_durability)
	{
	}
};
class InvenPipe
{
public:
	uint8_t m_ui8_slot, m_ui8_enhancement_level;
	uint16_t m_ui16_item_id, m_ui16_current_durability, m_ui16_max_registerable_count;
	uint32_t m_ui32_item_count, m_ui32_npc_repair_price;

	InvenPipe(uint8_t slot, uint8_t enhancement_level, uint16_t item_id, uint16_t current_durability, uint32_t item_count, uint32_t npc_repair_price, uint16_t max_registerable_count)
		: m_ui8_slot(slot), m_ui8_enhancement_level(enhancement_level), m_ui16_item_id(item_id), m_ui16_current_durability(current_durability), m_ui32_item_count(item_count), m_ui32_npc_repair_price(npc_repair_price), m_ui16_max_registerable_count(max_registerable_count)
	{
	}
};
std::vector<InvenPipe> DumpInventory(int dump_inventory)
{
	uint8_t startOffset = 0x08;
	uint8_t sizeofEach = 0x80;

	uint64_t local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t inventoryPtr = *((uint64_t*)(local_player_address + g_ki32_Inventory));
	uint8_t maxinventorySlots = *((uint8_t*)(local_player_address + g_ki32_MaxInventorySlots));

	uint64_t stringTable_address = *((uint64_t*)(g_kuip_StringTable_UNICODE));
	uint64_t stringTable = *((uint64_t*)(stringTable_address));

	uint64_t listOfItemData;

	uint64_t NameEntryAddy;

	//pipe
	std::vector<InvenPipe>inven_dump;
	inven_dump.reserve(maxinventorySlots);

	std::vector<PlayerInventory> AllSlots;
	std::vector<PlayerInventoryItem> AllSlotsInfo1;
	std::vector<ItemData> AllSlotsInfo2;
	AllSlots.reserve(maxinventorySlots);
	AllSlotsInfo1.reserve(maxinventorySlots);
	AllSlotsInfo2.reserve(maxinventorySlots);
	//PlayerInventory.cs
	for (uint8_t count = 0; count < maxinventorySlots; count++)
	{
		listOfItemData = (startOffset + (count * sizeofEach));
		AllSlots.emplace_back(((uint64_t)inventoryPtr + listOfItemData), count);

		//Log("printing %d: %d, %x, %d, %x",count, listOfItemData, AllSlots[count].address, AllSlots[count].slotNo, (((uint64_t)inventoryPtr + listOfItemData)));
	}
	//PlayerInventoryItem.cs
	for (uint8_t count = 0; count < maxinventorySlots; count++)
	{
		uint64_t ItemData_i = AllSlots[count].m_ui64_address;
		uint32_t ItemCount = *((uint32_t*)(ItemData_i + 0x08));
		uint16_t CurrentDurability = *((uint16_t*)(ItemData_i + 0x18));
		uint16_t MaxDurability = *((uint16_t*)(ItemData_i + 0x1A));
		AllSlotsInfo1.emplace_back(*((uint64_t*)ItemData_i), ItemCount, CurrentDurability, MaxDurability);

		//Log("printing %d: %x, %d, %d, %d",count, AllSlotsInfo1[count].ItemData, AllSlotsInfo1[count].ItemCount, AllSlotsInfo1[count].CurrentDurability, AllSlotsInfo1[count].MaxDurability);
	}
	//ItemData.cs
	for (uint8_t count = 0; count < maxinventorySlots; count++)
	{
		uint64_t &ItemData_data = AllSlotsInfo1[count].m_ui64_itemdata;
		if (ItemData_data != 0)
		{
			uint16_t ItemIndex = *((uint16_t*)(ItemData_data + g_ki32_ItemIndex));
			uint32_t nameToInt = *((uint32_t*)(ItemData_data + g_ki32_Name));
			NameEntryAddy = stringTable + (0x08 * (nameToInt * 2));
			std::wstring itemName_w((wchar_t*)(*((uint64_t*)(NameEntryAddy))));
			uint8_t EnhancementLevel = *((uint8_t*)(ItemData_data + g_ki32_EnhancementLevel));
			uint32_t npcRepairPrice = *((uint32_t*)(ItemData_data + g_ki32_RepairPrice));
			uint16_t maxregisterablecount = *((uint16_t*)(ItemData_data + g_ki32_MaxRegisterCountForItemMarket));
			AllSlotsInfo2.emplace_back(ItemIndex, itemName_w, 0, EnhancementLevel, npcRepairPrice, maxregisterablecount);

		}
		else
		{
			AllSlotsInfo2.emplace_back(0, L"Null", 0, 0, 0, 0);
		}

		//Log("printing %d: %d, %s", count, ItemIndex, itemName_w);
	}
	//dump inventory
	if (dump_inventory == 1)
	{
		std::wofstream fout;
		CreateDirectory(GetDirectoryFile("dumps"), NULL);
		fout.open(GetDirectoryFile("dumps/Inventory.txt"), std::ios::trunc);
		for (uint8_t count = 0; count < maxinventorySlots; count++)
		{
			fout << std::left << std::setw(20) << "Slot #:" << std::right << std::setw(50) << AllSlots[count].m_ui8_slot << '\n';
			fout << std::left << std::setw(20) << "Name:" << std::right << std::setw(50) << AllSlotsInfo2[count].m_ws_name << '\n';
			fout << std::left << std::setw(20) << "Item ID:" << std::right << std::setw(50) << AllSlotsInfo2[count].m_ui16_item_id << '\n';
			fout << std::left << std::setw(20) << "Amount:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_i32_itemcount << '\n';
			fout << "----------------------------------------------------------------------" << '\n';
			fout << '\n';
		}
		fout.close();
		inven_dump.clear();
	}
	else if (dump_inventory == 2) //grab for fishing and auto manufacturing
	{
		for (uint8_t count = 0; count < maxinventorySlots; count++)
		{
			inven_dump.emplace_back(AllSlots[count].m_ui8_slot, AllSlotsInfo2[count].m_ui8_enhancement_level, AllSlotsInfo2[count].m_ui16_item_id, AllSlotsInfo1[count].m_i16_current_durability, AllSlotsInfo1[count].m_i32_itemcount, AllSlotsInfo2[count].m_ui32_npc_repair_price, AllSlotsInfo2[count].m_ui16_max_registerable_count);
		}
	}
	return inven_dump;
}

class WarehouseInventory
{
public:
	uint64_t m_ui64_address;
	uint8_t m_ui8_slot;

	WarehouseInventory(uint64_t address, uint8_t slot)
		: m_ui64_address(address), m_ui8_slot(slot)
	{
	}
};
class WarehouseInventoryItem
{
public:
	uint64_t m_ui64_item_data;
	uint32_t m_ui32_item_count;
	uint16_t m_ui16_current_durability, m_ui16_max_durability;

	WarehouseInventoryItem(uint64_t item_data, uint32_t item_count, uint16_t current_durability, uint16_t max_durability)
		: m_ui64_item_data(item_data), m_ui32_item_count(item_count), m_ui16_current_durability(current_durability), m_ui16_max_durability(max_durability)
	{
	}
};
class StoragePipe
{
public:
	std::wstring m_ws_item_name;
	uint8_t m_ui8_slot;
	uint16_t m_ui16_item_id;
	uint32_t m_ui32_item_count;
	StoragePipe(std::wstring name, uint8_t slot, uint16_t item_id, uint32_t item_count)
		: m_ws_item_name(name), m_ui8_slot(slot), m_ui16_item_id(item_id), m_ui32_item_count(item_count)
	{
	}
};
std::vector<StoragePipe> DumpWarehouse(int dump_warehouse)
{
	uint64_t currentwarehouse_address = *((uint64_t*)g_kuip_CurrentWarehouse);
	uint8_t totalstorageslots = *((uint8_t*)(currentwarehouse_address + 0x04)) + 1;

	//pipe
	std::vector<StoragePipe>stor_dump;
	stor_dump.reserve(totalstorageslots);

	if (*BDO::g_p_warehouse_exist)
	{
		uint8_t startOffset = 0x00;
		uint8_t sizeofEach = 0x88;

		uint64_t WarehousePtr = *((uint64_t*)(currentwarehouse_address + 0x08));

		uint64_t stringTable_address = *((uint64_t*)(g_kuip_StringTable_UNICODE));
		uint64_t stringTable = *((uint64_t*)(stringTable_address));

		uint64_t listOfItemData;

		uint64_t NameEntryAddy;

		std::vector<WarehouseInventory> AllSlots;
		std::vector<WarehouseInventoryItem> AllSlotsInfo1;
		std::vector<ItemData> AllSlotsInfo2;
		AllSlots.reserve(totalstorageslots);
		AllSlotsInfo1.reserve(totalstorageslots);
		AllSlotsInfo2.reserve(totalstorageslots);
		//WarehouseInventory.cs
		for (uint8_t count = 0; count < totalstorageslots; count++)
		{
			listOfItemData = (startOffset + (count * sizeofEach));
			AllSlots.emplace_back(((uint64_t)WarehousePtr + listOfItemData), count);

			//Log("printing %d: %d, %x, %d, %x",count, listOfItemData, AllSlots[count].address, AllSlots[count].slotNo, (((uint64_t)WarehousePtr + listOfItemData)));
		}
		//WarehouseInventoryItem.cs
		for (uint8_t count = 0; count < totalstorageslots; count++)
		{
			uint64_t ItemData_w = AllSlots[count].m_ui64_address;
			uint32_t ItemCount = *((uint32_t*)(ItemData_w + 0x10));
			uint16_t CurrentDurability = *((uint16_t*)(ItemData_w + 0x20));
			uint16_t MaxDurability = *((uint16_t*)(ItemData_w + 0x22));
			//if (ItemData_w == NULL || ItemCount <= 0 || CurrentDurability <= 0 || MaxDurability <= 0)
				//break;
			AllSlotsInfo1.emplace_back(*((uint64_t*)(ItemData_w + 0x08)), ItemCount, CurrentDurability, MaxDurability);

			//Log("printing %d: %x, %d, %d, %d", count, AllSlotsInfo1[count].ItemData_w, AllSlotsInfo1[count].ItemCount, AllSlotsInfo1[count].CurrentDurability, AllSlotsInfo1[count].MaxDurability);
		}
		//ItemData.cs
		for (uint8_t count = 0; count < totalstorageslots; count++)
		{
			uint64_t ItemData_data = AllSlotsInfo1[count].m_ui64_item_data;
			uint16_t ItemIndex = *((uint16_t*)(ItemData_data + g_ki32_ItemIndex)); //crash here
			//if (count == 0 && ItemIndex != 1)
				//break; //was return
			uint32_t nameToInt = *((uint32_t*)(ItemData_data + g_ki32_Name));
			NameEntryAddy = stringTable + (0x08 * (nameToInt * 2));
			std::wstring itemName_w((wchar_t*)(*((uint64_t*)(NameEntryAddy))));
			AllSlotsInfo2.emplace_back(ItemIndex, itemName_w, 0, 0, 0, 0);

			//Log("printing %d: %d, %s", count, ItemIndex, itemName_w.c_str());
		}
		//dump warehouse
		if (dump_warehouse == 1)
		{
			std::wofstream fout;
			CreateDirectory(GetDirectoryFile("dumps"), NULL);
			fout.open(GetDirectoryFile("dumps/Warehouse.txt"), std::ios::trunc);
			for (uint8_t count = 0; count < totalstorageslots; count++)
			{
				fout << std::left << std::setw(20) << "Slot #:" << std::right << std::setw(50) << AllSlots[count].m_ui8_slot << '\n';
				fout << std::left << std::setw(05) << "Name:" << std::right << std::setw(65) << AllSlotsInfo2[count].m_ws_name << '\n';
				fout << std::left << std::setw(20) << "Item ID:" << std::right << std::setw(50) << AllSlotsInfo2[count].m_ui16_item_id << '\n';
				fout << std::left << std::setw(20) << "Amount:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_ui32_item_count << '\n';
				fout << "----------------------------------------------------------------------" << '\n';
				fout << '\n';
			}
			fout.close();
			stor_dump.clear();
		}
		else if (dump_warehouse == 2) //grab for auto manufacturing
		{
			//pass data for fishing
			for (uint8_t count = 0; count < totalstorageslots; count++)
			{
				stor_dump.emplace_back(AllSlotsInfo2[count].m_ws_name, AllSlots[count].m_ui8_slot, AllSlotsInfo2[count].m_ui16_item_id, AllSlotsInfo1[count].m_ui32_item_count);
			}
		}
	}
	else
	{
		LuaExecutor("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Must be Nearby a warehouse<PAOldColor>')");
	}
	return stor_dump;
}

class MarketList
{
public:
	uint64_t m_ui64_address_1, m_ui64_address_2;
	uint32_t m_ui32_count;

	MarketList(uint64_t address_1, uint64_t address_2, uint32_t count)
		: m_ui64_address_1(address_1), m_ui64_address_2(address_2), m_ui32_count(count)
	{
	}
};
class MarketItemData
{
public:
	uint64_t m_ui64_items_data_ptr, m_ui64_item_max_price, m_ui64_item_min_price, m_ui64_item_recent_price, m_ui64_registeration_count;

	MarketItemData(uint64_t items_data_ptr, uint64_t max_price, uint64_t min_price, uint64_t recent_price, uint64_t registeration_count)
		: m_ui64_items_data_ptr(items_data_ptr), m_ui64_item_max_price(max_price), m_ui64_item_min_price(min_price), m_ui64_item_recent_price(recent_price), m_ui64_registeration_count(registeration_count)
	{
	}
};
class MarketPipe
{
public:
	uint64_t m_ui64_min_price, m_ui64_max_price, m_ui64_recent_price, m_ui64_registeration_count;
	uint32_t m_ui32_market_item_index;
	MarketPipe(uint64_t max_price, uint64_t min_price, uint64_t recent_price, uint64_t registeration_count, uint32_t market_item_index)
		:m_ui64_max_price(max_price), m_ui64_min_price(min_price), m_ui64_recent_price(recent_price), m_ui64_registeration_count(registeration_count), m_ui32_market_item_index(market_item_index)
	{

	}
};
std::vector<MarketPipe> DumpMarketplace(int dump_marketplace)
{
	//string table for fetching names
	uint64_t stringTable_address = *((uint64_t*)(g_kuip_StringTable_UNICODE));
	uint64_t stringTable = *((uint64_t*)(stringTable_address));

	//ge::ItemMarketSummaryInClient
	uint64_t itemmarketsumaryinclient = *((uint64_t*)(g_kuip_MarketBase + 0x18));

	//items on market
	uint64_t ListOfItems_Start = *((uint64_t*)(g_kuip_MarketBase + 0x00)); //item data initializer aka marketplace_ptr
	uint64_t ListOfItems_End = *((uint64_t*)(g_kuip_MarketBase + 0x08));
	uint32_t ListOfItems = ((uint32_t)((ListOfItems_End - ListOfItems_Start) / 0x08));
	//Log("value check: %d", ListOfItems);

	//reserve buffer for all the items can be listed
	uint8_t sizeofEach_1 = 0x8;
	uint8_t sizeofEach_2 = 0x78;
	uint64_t listOfItemData_1;
	uint64_t listOfItemData_2;

	//for storing names and item id
	uint64_t NameEntryAddy;
	std::wstring itemName_w;

	//pipe
	std::vector<MarketPipe>market_dump;
	market_dump.reserve(ListOfItems);

	//vector to store the item data
	std::vector<MarketList> Allitems;
	std::vector<MarketItemData> AllitemsInfo1;
	std::vector<ItemData> AllitemsInfo2;
	Allitems.reserve(ListOfItems);
	AllitemsInfo1.reserve(ListOfItems);
	AllitemsInfo2.reserve(ListOfItems);

	//MarketList.cs
	for (uint32_t count = 0; count < ListOfItems; count++)
	{
		listOfItemData_1 = count * sizeofEach_1;
		listOfItemData_2 = count * sizeofEach_2;
		Allitems.emplace_back(*((uint64_t*)(ListOfItems_Start + listOfItemData_1)), ((uint64_t)(itemmarketsumaryinclient + listOfItemData_2)), count);
		//cLog("printing %d: %x, %d, %x",count, Allitems[count].address, Allitems[count].slotNo, ((uint64_t)(marketPlacePtr + listOfItemData)));
	}
	//MarketItemData.cs
	for (uint32_t count = 0; count < ListOfItems; count++)
	{
		//fLog("%p", Allitems[count].m_ui64_address_2);
		uint64_t MarketItemDataPtr_1 = Allitems[count].m_ui64_address_1;
		uint64_t MarketItemDataPtr_2 = Allitems[count].m_ui64_address_2;
		uint64_t itemmaxprice = *((uint64_t*)(MarketItemDataPtr_1 + 0x08));
		uint64_t itemminprice = *((uint64_t*)(MarketItemDataPtr_1 + 0x10));
		uint64_t itemrecentprice = *((uint64_t*)(MarketItemDataPtr_2 + 0x20));
		uint64_t registeration_count = *((uint64_t*)(MarketItemDataPtr_2 + 0x48));
		AllitemsInfo1.emplace_back(*((uint64_t*)(MarketItemDataPtr_1)), itemmaxprice, itemminprice, itemrecentprice, registeration_count);

		//cLog("printing %d: %x, %d, %d", count, AllitemsInfo1[count].MarketItemDataPtr, AllitemsInfo1[count].itemmaxprice, AllitemsInfo1[count].itemminprice);
	}
	//ItemData.cs
	for (uint32_t count = 0; count < ListOfItems; count++)
	{
		uint64_t marketItemData_data = AllitemsInfo1[count].m_ui64_items_data_ptr;
		uint16_t ItemIndex = *((uint16_t*)(marketItemData_data + g_ki32_ItemIndex));
		uint32_t MarketItemIndex = *((uint32_t*)(marketItemData_data + g_ki32_ItemIndex));
		uint8_t EnhancementLevel = *((uint8_t*)(marketItemData_data + g_ki32_EnhancementLevel));
		uint32_t nameToInt = *((uint32_t*)(marketItemData_data + g_ki32_Name));
		NameEntryAddy = stringTable + (0x08 * (nameToInt * 2));
		std::wstring itemName_w((wchar_t*)(*((uint64_t*)(NameEntryAddy))));
		AllitemsInfo2.emplace_back(ItemIndex, itemName_w, MarketItemIndex, EnhancementLevel, 0, 0);
	}
	//dump marketplace
	if (dump_marketplace == 1)
	{
		std::wofstream fout;
		fout.imbue(std::locale(std::locale::empty(), new std::codecvt_utf8<wchar_t, 0x10ffff, std::generate_header>)); //get foreign letters
		//fout.imbue(std::locale(fout.getloc(), new std::codecvt_utf8<wchar_t, 0x10ffff, std::generate_header>));
		CreateDirectory(GetDirectoryFile("dumps"), NULL);
		fout.open(GetDirectoryFile("dumps/MarketPlace.txt"), std::ios::trunc);
		for (uint32_t count = 0; count < ListOfItems; count++)
		{
			fout << std::left << std::setw(30) << "Item Market Location:" << std::right << std::setw(40) << Allitems[count].m_ui32_count << '\n';
			fout << std::left << std::setw(30) << "Item ID:" << std::right << std::setw(40) << AllitemsInfo2[count].m_ui16_item_id << '\n';
			fout << std::left << std::setw(30) << "Market Item ID:" << std::right << std::setw(40) << AllitemsInfo2[count].m_ui32_market_item_index << '\n';
			fout << std::left << std::setw(05) << "Name:" << std::right << std::setw(65) << AllitemsInfo2[count].m_ws_name << '\n';
			fout << std::left << std::setw(30) << "Enhancement Level:" << std::right << std::setw(40) << AllitemsInfo2[count].m_ui8_enhancement_level << '\n';
			fout << std::left << std::setw(30) << "Maximum Price:" << std::right << std::setw(40) << AllitemsInfo1[count].m_ui64_item_max_price << '\n';
			fout << std::left << std::setw(30) << "Minimum Price:" << std::right << std::setw(40) << AllitemsInfo1[count].m_ui64_item_min_price << '\n';
			fout << "----------------------------------------------------------------------" << '\n';
			fout << '\n';
		}
		fout.close();
	}
	else if (dump_marketplace == 2)
	{
		for (uint32_t count = 0; count < ListOfItems; count++)
		{
			market_dump.emplace_back(AllitemsInfo1[count].m_ui64_item_max_price, AllitemsInfo1[count].m_ui64_item_min_price, AllitemsInfo1[count].m_ui64_item_recent_price, AllitemsInfo1[count].m_ui64_registeration_count, AllitemsInfo2[count].m_ui32_market_item_index);
		}
	}
	return market_dump;
}