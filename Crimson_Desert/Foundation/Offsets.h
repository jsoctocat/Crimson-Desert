#pragma once
//these were in headers.h -> actordata.h -> private
const int g_ki32_VTable										= 0x0000;
const int g_ki32_InteractionFrag							= 0x0020;
const int g_ki32_ActorKey									= 0x0058;
const int g_ki32_ActorType									= 0x005C;
const int g_ki32_CharacterName								= 0x0068;
const int g_ki32_WorldPosition_Self[3]						= { 0x130, 0x134, 0x138 };
const int g_ki32_WorldPosition_Target[3]					= { 0x1C0, 0x1C4, 0x1C8 };
const int g_ki32_WorldPosition_Collectables[3]				= { 0x360, 0x364, 0x368 };
const int g_ki32_WorldPosition_Static[3]					= { 0x008, 0x00C, 0x010 };
//const int g_ki32_WorldPosition_CrossHair[3]					= { 0xBAC, 0xBB0, 0xBB4 };
const int g_ki32_CurrentRegion								= 0x0140;
const int g_ki32_ActorId									= 0x0148;
const int g_ki32_ActiveBuffCount							= 0x0180;
const int g_ki32_ActiveBuffList								= 0x0188;
const int g_ki32_GearScore									= 0x1A2C;
const int g_ki32_DeadActor									= 0x01B0; //the following also works(need more tests) 0x164, 0x16C, 0x1B0, 0x1B1

//character control
const int g_ki32_CharacterController						= 0x0398;
const int g_ki32_characterLocalPlayer						= 0x0008; //(you can use worldPos offsets like you are with localplayer) (only for players and mobs?)
const int g_ki32_CharacterScene								= 0x0010;
const int g_ki32_CharacterAnimation							= 0x04C4; //controller -> scene -> animation
const int g_ki32_JumpHeight									= 0x07FC; //controller -> jump
const int g_ki32_CharacterRotation							= 0x0440;
const int g_ki32_InvisibleCharacter							= 0x04BC;

//teleport
const int g_ki32_teleport_1									= 0x0AA8; //needs to update
const int g_ki32_teleport_2									= 0x01A0; //needs to update
const int g_ki32_teleport_3									= 0x0090;
const int g_ki32_teleport_x									= 0x0120;
const int g_ki32_teleport_y									= 0x0124;
const int g_ki32_teleport_z									= 0x0128;

//crosshair position
const int g_ki32_cursor_position_x							= 0x3960;
const int g_ki32_cursor_position_y							= g_ki32_cursor_position_x + 0x04;
const int g_ki32_cursor_position_z							= g_ki32_cursor_position_y + 0x04;

//movement control
const int g_ki32_MovementControl							= 0x4570;
const int g_ki32_MovementDestinationX						= g_ki32_MovementControl + 0x4;
const int g_ki32_MovementDestinationY						= g_ki32_MovementDestinationX + 0x4;
const int g_ki32_MovementDestinationZ						= g_ki32_MovementDestinationY + 0x4;
const int g_ki32_MovementOriginX							= g_ki32_MovementDestinationZ + 0x4;
const int g_ki32_MovementOriginY							= g_ki32_MovementOriginX + 0x4;
const int g_ki32_MovementOriginZ							= g_ki32_MovementOriginY + 0x4;

//--------------------------------------------------------------------------------------------------------------------
const int g_ki32_EquipmentStart								= 0x04B8;
const int g_ki32_MaindHandDurab								= 0x04C0;
const int g_ki32_Level										= 0x1130;
const int g_ki32_IsReadyToPlay								= 0x1D6D; //address + 0x0B = inventory
const int g_ki32_Inventory									= 0x1D78; //changes every patch
const int g_ki32_WeightItemsAndSilver						= g_ki32_Inventory - 0x08;
const int g_ki32_FreeInventorySlots							= g_ki32_Inventory + 0x18; //1D18
const int g_ki32_MaxInventorySlots							= g_ki32_FreeInventorySlots + 0x01;
const int g_ki32_WeightEquippedItems						= g_ki32_MaxInventorySlots + 0xDF;
const int g_ki32_MainHand									= g_ki32_WeightEquippedItems + 0x08;
const int g_ki32_MainHandDurability							= g_ki32_MainHand + 0x20;
const int g_ki32_IsFishing									= 0x42C8; //swift as much as crit would so just calculate it
const int g_ki32_FishGrade									= g_ki32_IsFishing - 0x04;
const int g_ki32_NextFishBite								= g_ki32_IsFishing - 0x1A;
const int g_ki32_NextAutoFishAutoCatch						= g_ki32_IsFishing - 0xC;
const int g_ki32_FishHooked									= g_ki32_IsFishing + 0x1D;
const int g_ki32_LootingState								= 0x40BC; //Doesn't Exist - dont need it if autoloot
const int g_ki32_Critical									= 0x49F8; //max offset is base + 0x04 (max at 7) (applies to AS and CS just go down from here)
const int g_ki32_Luck										= g_ki32_Critical + 0x08; //max offset is base + 0x04 (max at 7)
const int g_ki32_Fishing									= g_ki32_Luck + 0x08; //max offset is base + 0x04 (max at 7)
const int g_ki32_Gathering									= g_ki32_Fishing + 0x08; //max offset is base + 0x04 (max at 7)
const int g_ki32_VisionRange								= 0x1088;
const int g_ki32_AlchSpeed									= 0x10A4; //0x10A4 (maybe 0x1084 or 0x1138) //write it like movement speed, 100000 as +1, 300000 +5
const int g_ki32_CookSpeed									= g_ki32_AlchSpeed + 0x4;
const int g_ki32_actorHasLoot								= 0x03F0; //3D8, 3D0

//ItemData_table
const int g_ki32_BasePriceForItemMarket						= 0x60; //0x20, 0x50
const int g_ki32_Name										= 0x144; //0xEC, 0x114 0x124, 0x12C, 0x13C
const int g_ki32_ItemIndex									= g_ki32_Name + 0x28; //0x114, 0x10C, 0x13C, 0x154
const int g_ki32_EnhancementLevel							= g_ki32_ItemIndex + 0x03; //0x03, 0x117, 0x10F, 0x13F
const int g_ki32_ItemType									= g_ki32_ItemIndex + 0x04; //0x110;
const int g_ki32_GradeType									= g_ki32_ItemType + 0x2; //0x112;
const int g_ki32_EquipType									= g_ki32_GradeType + 0x1; //0x113;
const int g_ki32_EquipSlotNo								= g_ki32_EquipType + 0x7; //0x11A;
const int g_ki32_ItemClassify								= g_ki32_EquipSlotNo - 0x9; //0x111;
const int g_ki32_Weight										= g_ki32_ItemIndex + 0x54; //0x15C, 0x168, 0x160, 0x190, 0x1A0		//might be wrong
const int g_ki32_IsStackable								= g_ki32_Weight + 0x4; //0x160;
const int g_ki32_OriginalPrice								= g_ki32_IsStackable + 0x4C; //0x1A8, 0x1B0, 0x1E0, 0x1F0			//might be wrong
const int g_ki32_SellPriceToNpc								= g_ki32_OriginalPrice + 0x8; //0x1B0;
const int g_ki32_RepairPrice								= 0x228; //0x1D8, 0x1D0, 0x200
const int g_ki32_MaxRegisterCountForItemMarket				= 0x250; //0x1F8, 0x1F0, 0x220, 0x238, 0x248
const int g_ki32_CollectToolType							= 0x26D; //0x235, 0x22D

//RegionData_table
const int g_ki32_RegionKey									= 0x000;
const int g_ki32_RegionType									= 0x008;
const int g_ki32_VillageSiegeType							= 0x00C;
const int g_ki32_IsSafezone									= 0x018;
const int g_ki32_IsArenaZone								= 0x019;
const int g_ki32_IsDesert									= 0x01B;
const int g_ki32_IsOcean									= 0x01D;
const int g_ki32_IsPrison									= 0x01E;
const int g_ki32_IsVillageWarZone							= 0x021;
const int g_ki32_IsKingOrLordWarZone						= 0x022;
const int g_ki32_IsMainTown									= 0x023;
const int g_ki32_IsMinorTown								= 0x024;
const int g_ki32_IsMainOrMinorTown							= 0x025;
const int g_ki32_IsAccessableArea							= 0x026;
const int g_ki32_VillageTaxLevel							= 0x028;
const int g_ki32_DropGroupRerollCountOfSieger				= 0x029;
const int g_ki32_RespawnWaypointKey							= 0x02C;
const int g_ki32_RespawnWorldPos							= 0x030;
const int g_ki32_IsAncientDungeon							= 0x03C;
const int g_ki32_PTR_SiegeWrapper							= 0x088;
const int g_ki32_PTR_MinorSiegeWrapper						= 0x090;
const int g_ki32_TerritoryKeyRaw							= 0x098;
const int g_ki32_AffiliatedTownRegionKey					= 0x0E8;
const int g_ki32_PTR_AffiliatedTownRegion					= 0x0F0;
const int g_ki32_AffiliatedRegionKey						= 0x0F8;
const int g_ki32_RegionGroupKey								= 0x108;
const int g_ki32_RegionInfo									= 0x0D8;
const int g_ki32_AreaKey									= 0x11C;
const int g_ki32_PTR_MoreInfo								= 0x128;
const int g_ki32_ExplorationKey								= 0x148;
const int g_ki32_PTR_ExplorationStaticStatusWrapper			= 0x150;
const int g_ki32_ReturnWorldPos								= 0x168;
const int g_ki32_WarehouseManagerKey						= 0x220;
const int g_ki32_WorkerManagerKey							= 0x260;
const int g_ki32_StableManagerKEy							= 0x268;
const int g_ki32_ItemMarketManagerKey						= 0x278;
const int g_ki32_DeliveryManagerKey							= 0x280;
const int g_ki32_IsFreeRevivalArea							= 0x288;

//Mount
const int g_ki32_mount_accel								= 0x22E8;
const int g_ki32_mount_speed								= 0x22EC;
const int g_ki32_mount_turn									= 0x22F0;
const int g_ki32_mount_brake								= 0x22F4;

//lolox974 offsets and addresses are for version 780
/*
StrikerShards = IntPtr.Add((IntPtr)vam.ReadUInt64(localPlayer), 952); uint32_t, max 30

StunStiffnessFreeze = IntPtr.Add((IntPtr)vam.ReadUInt64(localPlayer), 4180); uint32_t, max 1500000, default 0
KnockdownBound = IntPtr.Add((IntPtr)vam.ReadUInt64(localPlayer), 4176); uint32_t, max 1500000, default 0
Grapple = IntPtr.Add((IntPtr)vam.ReadUInt64(localPlayer), 4188); uint32_t, max 1500000, default 0
KnockbackFloating = IntPtr.Add((IntPtr)vam.ReadUInt64(localPlayer), 4184); uint32_t, max 1500000, default 0

MaxZoom = (IntPtr)0x141F3D4F0; float, max at 5000, default 900

*/