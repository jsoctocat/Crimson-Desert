#pragma once
#include <cstdint>
#include <string>

//global variables
namespace BDO
{
	//checks if ingame or switching
	bool g_b_game_loaded_first_time = false;
	//static bool g_b_lua_table_created_once = false;
	bool g_b_is_ready_to_play = false;
	uintptr_t* g_p_in_game = (uintptr_t*)g_kuip_LocalPlayer;
	uintptr_t* g_p_warehouse_exist = ((uintptr_t*)g_kuip_CurrentWarehouse);
	uintptr_t* g_p_vehicle_exist = (uintptr_t*)g_kuip_CurrentVehicle;

	//unhook
	char g_c_dlldir[MAX_PATH]; //get dll dir
	HMODULE g_hmodule_dllModule; //get module name for unhook
	bool g_b_caplock_state; //shift key

	//console log
	bool g_b_show_console = false;

	//timer
	uint64_t g_ui64_last_tick = 0;
	int g_i32_esp_draw_interval = 15;

	//uitilities
	bool g_b_reloadedUI_check = false;
	bool g_b_reloadedUI = false;
	bool g_b_worker_auto_restore = false;
	bool g_b_remove_desert_debuff = false;
	bool g_b_debug = false;

	//character modification
	bool g_b_character_activation = false;
	float g_f_character_animation_speed = 1.0f; //animation speed
	bool g_b_player_detection_overwrite = false;
	bool g_b_no_cooldown = false;
	float g_f_jump_height = 0.0f;
	int g_i32_movement_type = 1; //default movement type: Travel
	char *g_cp_which_movement_type[] = { "Travel", "Grind", "Normal" };
	int g_i32_lifeskill_buff = 1; //default lifeskill buff: level 7
	char *g_cp_which_lifeskill_buff[] = { "LEVEL 5", "LEVEL 7" };

	//vehicle
	bool g_b_vehicle_activation = false;
	int g_i32_vehicle_accel_slider = 149;
	int g_i32_vehicle_speed_slider = 159;
	int g_i32_vehicle_turn_slider = 145;
	int g_i32_vehicle_brake_slider = 145;

	//manufacture
	bool g_b_auto_manufacture = false;
	int g_i32_warehouse_timer_interval = 1000;
	uint64_t g_ui64_warehouse_last_tick = 1000;
	bool g_b_storage_check = false;
	bool g_b_wait_check = false;
	bool g_b_is_manufacturing = false;

	//esp
	int g_i32_esp_target = 0;
	char* g_cp_which_ESP_target[] = { "Player", "Monster", "NPC", "Vehicle", "Gate", "Alterego", "Collect", "Household", "Installation", "Deadbody", "Custom" };
	bool g_b_show_esp = false;
	bool g_b_show_esp_line = false;
	bool g_b_show_esp_circle = false;
	bool g_b_show_esp_name = false;
	bool g_b_show_esp_id = false;
	bool g_b_show_esp_level = false;
	bool g_b_show_esp_distance = false;
	bool g_b_show_world_map = false;

	//market-buy
	bool g_b_auto_buy = false;
	bool g_b_show_market_log = false;
	int g_i32_execution_interval = 250;
	uint64_t g_ui64_warehouse_silver_for_market = 0;
	int g_i32_territory_key = 1; //default territory key: Heidel
	char* g_cp_which_town[] = { "Velia", "Heidel", "Calpheon", "Mediah", "Valencia", "Kamasylvia" };
	int g_i32_wallet_type = 1;	// 0: Inventory | 2: Warehouse  | 4: Maid
	char* g_cp_which_wallet[] = { "Inventory", "Warehouse" }; //, "Maid" 

	//market-sell
	bool g_b_auto_sell = false;
	int g_i32_sell_type = 2; //default sell type: recent price
	char* g_cp_sell_type[] = { "Minimum", "Maximum", "Recent", "Custom" };
	int g_i32_market_sell_item_id = 40228; //default sell item: ancient scrolls (40218 = relics)
	int g_i32_custom_price = 0;

	//auto fish
	int g_i32_predictGrade = 3; //default fish grade: yellow fish
	char* g_cp_which_fish_Grade[] = { "White", "Green", "Blue", "Yellow" };
	bool g_b_auto_fishing = false;
	bool g_b_relics_only = false;
	float g_f_fishingPosX = 0;
	bool g_b_clear_position = false;
	bool g_b_automate_fishing = false;

	//auto grind
	bool g_b_navigation_record = false;
	bool g_b_navigation_record_check = false;
	int g_i32_navigation_delay = 200;
	bool g_b_navigation_show_waypoints = false;
	int g_i32_navigation_lastpoint = 0;
	int g_i32_grinder_type = 1; //default grinder type: teleport
	char* g_cp_which_grinder_type[] = { "Normal", "Teleport" };
	bool g_b_navigation_activate = false;
	bool g_b_navigation_pause = false;
	bool g_b_navigation_reload_check = false;
	bool g_b_navigation_player_detection = false;
	bool g_b_character_animation_lock = false;
	bool g_b_navigation_pet_loot = false;
	bool g_b_navigation_looting = false;
	float g_f_loot_range = 500.0f;
	float g_f_monster_range = 348.0f;
	bool g_b_navigation_monsters_detection = false;

	//screenshot
	bool g_b_cam_activation = false;
	bool g_b_cam_advanced = false;
	float g_f_cam_view1 = 0;
	float g_f_cam_view2 = 0;
	float g_f_cam_view3 = 0;
	float g_f_cam_view4 = 0;
	float g_f_cam_screenshot1 = 0;
	float g_f_cam_screenshot2 = 0;
	float g_f_cam_screenshot3 = 0;
	float g_f_cam_screenshot4 = 0;
	float g_f_cam_screenshot5 = 0;

	//patch pet system
	BYTE g_bt_pet_system_nop[4] = { 0x90, 0x90, 0x90, 0x90 };
	BYTE* g_btp_pet_system_bypass = reinterpret_cast<BYTE*>(g_kuip_PatchPetSystem);

	//no cooldown
	BYTE g_bt_cooldown_normal[2] = { 0x39,0xBA };
	BYTE g_bt_cooldown_reduced[2] = { 0x39,0x92 };
	BYTE* g_btp_no_cooldown = reinterpret_cast<BYTE*>(g_kuip_NoCooldown);

	//bypass obstacle
	BYTE g_bt_obstacle_normal[2] = { 0x0F,0x29 };
	BYTE g_bt_obstacle_wall[2] = { 0x0F,0x28 };
	BYTE g_bt_obstacle_ground[2] = { 0x90,0x29 };
	BYTE* g_btp_bypass_obstacle = reinterpret_cast<BYTE*>(g_kuip_PassThroughObstacle);

	//patch speed
	BYTE g_bt_speed_normal[7] = { 0x66,0x0F,0x6E,0x84,0x82,0x18,0x0C }; //0xC00 <- 0x00 0x0C
	BYTE g_bt_speed_grind[7] = { 0x66,0x0F,0x6E,0x84,0x82,0x1B,0x0C }; //0xC02 <- 0x02 0x0C
	BYTE g_bt_speed_travel[7] = { 0x66,0x0F,0x6E,0x84,0x82,0x17,0x0C }; //0xBFF <- 0xFF 0x0B
	//0xC2C, insane attack speed, doesn't effect movement speed
	BYTE* g_btp_patch_speed = reinterpret_cast<BYTE*>(g_kuip_SpeedNullifier);
}

//game Enums
namespace BDOEnums
{
	enum Cpuid_Enum
	{
		CPUID_EAX,
		CPUID_EBX,
		CPUID_ECX,
		CPUID_EDX,
		CPUID_ARRAY_SIZE
	};

	enum ActorType
	{
		ActorType_Player = 0,
		ActorType_Monster = 1,
		ActorType_Npc = 2,
		ActorType_Vehicle = 3,
		ActorType_Gate = 4,
		ActorType_Alterego = 5,
		ActorType_Collect = 6,
		ActorType_Household = 7,
		ActorType_Installation = 8,
		ActorType_Deadbody = 9,
		ActorType_All = 10
	};
	enum  ClassType
	{
		ClassType_Warrior = 0,
		ClassType_Temp1 = 2,
		ClassType_Ranger = 4,
		ClassType_Sorcerer = 8,
		ClassType_Temp2 = 10,
		ClassType_Giant = 12,
		ClassType_Tamer = 16,
		ClassType_ShyWomen = 17,
		ClassType_Shy = 18,
		ClassType_BladeMaster = 20,
		ClassType_BladeMasterWomen = 21,
		ClassType_Temp = 22,
		ClassType_Valkyrie = 24,
		ClassType_NinjaWomen = 25,
		ClassType_NinjaMan = 26,
		ClassType_DarkElf = 27,
		ClassType_Wizard = 28,
		ClassType_Kunoichi = 30,
		ClassType_WizardWomen = 31,
		ClassType_Count = 32
	};
	enum CombatResouceType
	{
		MP = 0,
		WP = 1
	};

	enum ProcessingType
	{
		Shake = 0,
		Grind = 1,
		Chop = 2,
		Dry = 3,
		Filter = 4,
		Heat = 5
	};

	enum ItemGrade
	{
		White = 0,
		Green = 1,
		Blue = 2,
		Yellow = 3
	};
	enum ItemWhereType
	{
		eInventory = 0, //base inventory
		eEquip = 1,
		eWarehouse = 2, //base warehouse
		eServantInventory = 4,
		eServantEquip = 5,
		eGuildWarehouse = 14,
		eCashInventory = 17,
		eInventoryBag = 19,
		eCashInventoryBag = 20,
		eCount = 21
	};
	enum EquipSlotNo
	{
		mainHand = 0,
		offHand = 1,
		gatheringTool = 2,
		chest = 3,
		glove = 4,
		boots = 5,
		helm = 6,
		necklace = 7,
		ring1 = 8,
		ring2 = 9,
		earing1 = 10,
		earing2 = 11,
		belt = 12,
		lantern = 13,
		avatarChest = 14,
		avatarGlove = 15,
		avatarBoots = 16,
		avatarHelm = 17,
		avatarWeapon = 18,
		avatarSubWeapon = 19,
		avatarUnderWear = 20,
		faceDecoration1 = 21,
		faceDecoration2 = 22,
		faceDecoration3 = 23,
		installation4 = 24,
		body = 25,
		avatarBody = 26,
		alchemyStone = 27,
		explorationBonus0 = 28,
		awakenWeapon = 29,
		avatarAwakenWeapon = 30,
		equipSlotNoCount = 31
	};

	enum VirtualKeyCode
	{
		KeyCode_None = 0,
		KeyCode_LBUTTON = 1,
		KeyCode_RBUTTON = 2,
		KeyCode_CANCEL = 3,
		KeyCode_MBUTTON = 4,
		KeyCode_BACK = 8,
		KeyCode_TAB = 9,
		KeyCode_CLEAR = 12,
		KeyCode_RETURN = 13,
		KeyCode_SHIFT = 16,
		KeyCode_CONTROL = 17,
		KeyCode_MENU = 18,
		KeyCode_PAUSE = 19,
		KeyCode_CAPITAL = 20,
		KeyCode_ESCAPE = 27,
		KeyCode_SPACE = 32,
		KeyCode_PGUP = 33,
		KeyCode_PGDN = 34,
		KeyCode_END = 35,
		KeyCode_HOME = 36,
		KeyCode_LEFT = 37,
		KeyCode_UP = 38,
		KeyCode_RIGHT = 39,
		KeyCode_DOWN = 40,
		KeyCode_SELECT = 41,
		KeyCode_PRINT = 42,
		KeyCode_EXECUTE = 43,
		KeyCode_SNAPSHOT = 44,
		KeyCode_INSERT = 45,
		KeyCode_DELETE = 46,
		KeyCode_HELP = 47,
		KeyCode_0 = 48,
		KeyCode_1 = 49,
		KeyCode_2 = 50,
		KeyCode_3 = 51,
		KeyCode_4 = 52,
		KeyCode_5 = 53,
		KeyCode_6 = 54,
		KeyCode_7 = 55,
		KeyCode_8 = 56,
		KeyCode_9 = 57,
		KeyCode_A = 65,
		KeyCode_B = 66,
		KeyCode_C = 67,
		KeyCode_D = 68,
		KeyCode_E = 69,
		KeyCode_F = 70,
		KeyCode_G = 71,
		KeyCode_H = 72,
		KeyCode_I = 73,
		KeyCode_J = 74,
		KeyCode_K = 75,
		KeyCode_L = 76,
		KeyCode_M = 77,
		KeyCode_N = 78,
		KeyCode_O = 79,
		KeyCode_P = 80,
		KeyCode_Q = 81,
		KeyCode_R = 82,
		KeyCode_S = 83,
		KeyCode_T = 84,
		KeyCode_U = 85,
		KeyCode_V = 86,
		KeyCode_W = 87,
		KeyCode_X = 88,
		KeyCode_Y = 89,
		KeyCode_Z = 90,
		KeyCode_NUMPAD0 = 96,
		KeyCode_NUMPAD1 = 97,
		KeyCode_NUMPAD2 = 98,
		KeyCode_NUMPAD3 = 99,
		KeyCode_NUMPAD4 = 100,
		KeyCode_NUMPAD5 = 101,
		KeyCode_NUMPAD6 = 102,
		KeyCode_NUMPAD7 = 103,
		KeyCode_NUMPAD8 = 104,
		KeyCode_NUMPAD9 = 105,
		KeyCode_MULTIPLY = 106,
		KeyCode_ADD = 107,
		KeyCode_SEPARATOR = 108,
		KeyCode_SUBTRACT = 109,
		KeyCode_DECIMAL = 110,
		KeyCode_DIVIDE = 111,
		KeyCode_F1 = 112,
		KeyCode_F2 = 113,
		KeyCode_F3 = 114,
		KeyCode_F4 = 115,
		KeyCode_F5 = 116,
		KeyCode_F6 = 117,
		KeyCode_F7 = 118,
		KeyCode_F8 = 119,
		KeyCode_F9 = 120,
		KeyCode_F10 = 121,
		KeyCode_F11 = 122,
		KeyCode_F12 = 123
	};
}

//game Lua variables
namespace BDOLuaVariables
{
	int FishGrade;
	int fishLevel;
	int currenthp;
	int maxhp;
	int currentmp;
	int maxmp;
	int currentWP;
	int currentMaxWp;
	int freeInventoryCount;
	int maxInventoryCount;
	int invenSize;
	int userNo;
	int playerLevel;
	int expRate;
	int silverInInventory;
	int sumtotalWeight;
	int isFreeArea;
	int isSafeZone;
	float playerPosX;
	float playerPosY;
	float playerPosZ;
	std::string userNickName;
	int registListCount;
	int isGhosting;
	int freeRevivalLevel;
}