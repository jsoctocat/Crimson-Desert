#pragma once
#include "Foundation/Addresses.h"
#include "Foundation/Offsets.h"
#include "Utilities/Logs.h"

#include <vector>
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
	uint64_t m_ui16_itemindex;
	uint32_t m_i32_itemcount;
	uint16_t m_i16_current_durability, m_i16_max_durability;

	PlayerInventoryItem(uint16_t itemindex, uint32_t itemcount, uint16_t current_durability, uint16_t max_durability)
		: m_ui16_itemindex(itemindex), m_i32_itemcount(itemcount), m_i16_current_durability(current_durability), m_i16_max_durability(max_durability)
	{
	}
};
class InvenPipe
{
public:
	uint8_t m_ui8_slot, m_ui8_enhancement_level;
	uint16_t m_ui16_item_id, m_ui16_current_durability, m_ui16_max_registerable_count;
	uint32_t m_ui32_item_count, m_ui32_npc_repair_price;

	InvenPipe(uint8_t slot, uint16_t item_id, uint16_t current_durability, uint32_t item_count)
		: m_ui8_slot(slot), m_ui16_item_id(item_id), m_ui16_current_durability(current_durability), m_ui32_item_count(item_count)
	{
	}
};
int8_t DumpInventory(int inventoryDumpType, std::vector<InvenPipe>* inventoryInfo)
{
	uint8_t startOffset = 0x08;
	uint8_t sizeofEach = 0x90;

	uint64_t& local_player_address = *((uint64_t*)g_kuip_LocalPlayer);
	uint64_t inventoryPtr = *((uint64_t*)(local_player_address + g_ki32_Inventory));
	uint8_t maxinventorySlots = *((uint8_t*)(local_player_address + g_ki32_MaxInventorySlots));

	uint64_t listOfItemData;

	std::vector<PlayerInventory> AllSlots;
	std::vector<PlayerInventoryItem> AllSlotsInfo1;
	AllSlots.reserve(maxinventorySlots);
	AllSlotsInfo1.reserve(maxinventorySlots);

	//PlayerInventory.cs
	for (uint8_t count = 0; count < maxinventorySlots; count++)
	{
		listOfItemData = (startOffset + (count * sizeofEach));
		AllSlots.emplace_back(((uint64_t)inventoryPtr + listOfItemData), count);

		//Log("printing %d: %d, %x, %d, %x", count, listOfItemData, AllSlots[count].address, AllSlots[count].slotNo, (((uint64_t)inventoryPtr + listOfItemData)));
	}

	//PlayerInventoryItem.cs
	for (uint8_t count = 0; count < maxinventorySlots; count++)
	{
		uint64_t& ItemData = AllSlots[count].m_ui64_address;
		if (ItemData != 0)
		{
			uint16_t ItemIndex = *((uint16_t*)(ItemData + 0x00));
			uint32_t ItemCount = *((uint32_t*)(ItemData + 0x08));
			uint16_t CurrentDurability = *((uint16_t*)(ItemData + 0x18));
			uint16_t MaxDurability = *((uint16_t*)(ItemData + 0x1A));
			AllSlotsInfo1.emplace_back(ItemIndex, ItemCount, CurrentDurability, MaxDurability);

			//Log("printing %d: %x, %d, %d, %d",count, AllSlotsInfo1[count].ItemIndex, AllSlotsInfo1[count].ItemCount, AllSlotsInfo1[count].CurrentDurability, AllSlotsInfo1[count].MaxDurability);
		}
		else
		{
			AllSlotsInfo1.emplace_back(0, 0, 0, 0);
		}
	}

	//dump inventory
	if (inventoryDumpType == 1)
	{
		std::wofstream fout;
		CreateDirectory(GetDirectoryFile("dumps"), NULL);
		fout.open(GetDirectoryFile("dumps/Inventory.txt"), std::ios::trunc);
		for (uint8_t count = 0; count < maxinventorySlots; count++)
		{
			fout << std::left << std::setw(20) << "Slot #:" << std::right << std::setw(50) << AllSlots[count].m_ui8_slot << '\n';
			fout << std::left << std::setw(20) << "Item ID:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_ui16_itemindex << '\n';
			fout << std::left << std::setw(20) << "Amount:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_i32_itemcount << '\n';
			fout << "----------------------------------------------------------------------\n\n";
		}
		fout.close();
	}
	else if (inventoryDumpType == 2) //grab for fishing and auto manufacturing
	{
		//load up inventory info into the vector
		(*inventoryInfo).reserve(maxinventorySlots);

		for (uint8_t count = 0; count < maxinventorySlots; count++)
		{
			(*inventoryInfo).emplace_back(AllSlots[count].m_ui8_slot, AllSlotsInfo1[count].m_ui16_itemindex, AllSlotsInfo1[count].m_i16_current_durability, AllSlotsInfo1[count].m_i32_itemcount);
		}
	}

	return maxinventorySlots;
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
	uint16_t m_ui16_item_id, m_ui16_current_durability, m_ui16_max_durability;
	uint32_t m_ui32_item_count;

	WarehouseInventoryItem(uint16_t item_id, uint32_t item_count, uint16_t current_durability, uint16_t max_durability)
		: m_ui16_item_id(item_id), m_ui32_item_count(item_count), m_ui16_current_durability(current_durability), m_ui16_max_durability(max_durability)
	{
	}
};
class StoragePipe
{
public:
	uint8_t m_ui8_slot;
	uint16_t m_ui16_item_id;
	uint32_t m_ui32_item_count;
	StoragePipe(uint8_t slot, uint16_t item_id, uint32_t item_count)
		: m_ui8_slot(slot), m_ui16_item_id(item_id), m_ui32_item_count(item_count)
	{
	}
};
int8_t DumpWarehouse(int warehouseDumpType, std::vector<StoragePipe>* warehouseInfo)
{
	uint8_t totalstorageslots = 0;
	if (*BDO::g_pWarehouse)
	{
		uint64_t& currentwarehouse_address = *((uint64_t*)g_kuip_CurrentWarehouse);
		totalstorageslots = *((uint8_t*)(currentwarehouse_address + 0x04)) + 1;

		uint8_t startOffset = 0x00;
		uint8_t sizeofEach = 0x80;

		uint64_t& WarehousePtr = *((uint64_t*)(currentwarehouse_address + 0x08));

		uint64_t& stringTable_address = *((uint64_t*)(g_kuip_StringTable_UNICODE));
		uint64_t& stringTable = *((uint64_t*)(stringTable_address));

		uint64_t listOfItemData;

		std::vector<WarehouseInventory> AllSlots;
		std::vector<WarehouseInventoryItem> AllSlotsInfo1;
		AllSlots.reserve(totalstorageslots);
		AllSlotsInfo1.reserve(totalstorageslots);
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
			uint16_t ItemID = *((uint16_t*)(AllSlots[count].m_ui64_address + 0x08));
			uint64_t ItemCount = *((uint64_t*)(AllSlots[count].m_ui64_address + 0x10));
			uint16_t CurrentDurability = *((uint16_t*)(AllSlots[count].m_ui64_address + 0x20));
			uint16_t MaxDurability = *((uint16_t*)(AllSlots[count].m_ui64_address + 0x22));
			//if (ItemData_w == NULL || ItemCount <= 0 || CurrentDurability <= 0 || MaxDurability <= 0)
				//break;
			AllSlotsInfo1.emplace_back(ItemID, ItemCount, CurrentDurability, MaxDurability);

			//Log("printing %d: %x, %d, %d, %d", count, AllSlotsInfo1[count].ItemData_w, AllSlotsInfo1[count].ItemCount, AllSlotsInfo1[count].CurrentDurability, AllSlotsInfo1[count].MaxDurability);
		}
		//dump warehouse
		if (warehouseDumpType == 1)
		{
			std::wofstream fout;
			CreateDirectory(GetDirectoryFile("dumps"), NULL);
			fout.open(GetDirectoryFile("dumps/Warehouse.txt"), std::ios::trunc);
			for (uint8_t count = 0; count < totalstorageslots; count++)
			{
				fout << std::left << std::setw(20) << "Slot #:" << std::right << std::setw(50) << AllSlots[count].m_ui8_slot << '\n';
				fout << std::left << std::setw(20) << "Item ID:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_ui16_item_id << '\n';
				fout << std::left << std::setw(20) << "Amount:" << std::right << std::setw(50) << AllSlotsInfo1[count].m_ui32_item_count << '\n';
				fout << "----------------------------------------------------------------------\n\n";
			}
			fout.close();
		}
		else if (warehouseDumpType == 2) //grab for auto manufacturing
		{
			(*warehouseInfo).reserve(totalstorageslots);

			//pass data for fishing
			for (uint8_t count = 0; count < totalstorageslots; count++)
			{
				(*warehouseInfo).emplace_back(AllSlots[count].m_ui8_slot, AllSlotsInfo1[count].m_ui16_item_id, AllSlotsInfo1[count].m_ui32_item_count);
			}
		}
	}
	else
	{
		LuaExecutor("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Must be Nearby a warehouse<PAOldColor>')");
	}

	return totalstorageslots;
}