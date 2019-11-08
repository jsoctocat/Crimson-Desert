#pragma once

namespace BDO
{
	//checks if ingame or switching
	bool g_bGameLoadedFirstTime = false;
	bool g_bIsReadyToPlay = false;
	uintptr_t* g_pLocalPlayer = (uintptr_t*)g_kuip_LocalPlayer;
	uintptr_t* g_pWarehouse = (uintptr_t*)g_kuip_CurrentWarehouse;
	uintptr_t* g_pLocalVehicle = (uintptr_t*)g_kuip_CurrentVehicle;

	//unhook
	char g_c_dlldir[MAX_PATH]; //get dll dir

	//console log
	bool g_bShowConsole = false;

	//timer
	uint64_t g_ui64LastTick = 0;

	//uitilities
	bool g_bReloadedUI = false;
	bool g_bDebug = false;

	//no cooldown
	unsigned char g_ucCooldown_Normal[2] = { 0x39, 0xBB };
	unsigned char g_ucCooldown_Reduced[2] = { 0x39, 0x93 };
	unsigned char* g_ucpNoCooldown = reinterpret_cast<unsigned char*>(g_kuip_NoCooldown);

	//bypass obstacle
	unsigned char g_ucCollision_Normal[2] = { 0x0F, 0x29 };
	unsigned char g_ucCollision_Wall[2] = { 0x0F, 0x28 };
	unsigned char g_ucCollision_Ground[2] = { 0x90, 0x29 };
	unsigned char* g_ucpIgnoreCollision = reinterpret_cast<unsigned char*>(g_kuip_PassThroughObstacle);

	//patch speed
	unsigned char g_ucSpeed_Normal[7] = { 0x66, 0x0F, 0x6E, 0x84, 0x82, 0x58, 0x0B }; //0xC00 <- 0x00 0x0C
	unsigned char g_ucSpeed_Fast[7] = { 0x66, 0x0F, 0x6E, 0x84, 0x82, 0x57, 0x0B }; //0xC02 <- 0x02 0x0C
	unsigned char* g_ucpPatchSpeed = reinterpret_cast<unsigned char*>(g_kuip_SpeedNullifier);

	namespace Character
	{
		bool activation = false;
		float animationSpeed = 1.0f; //animation speed
		bool playerDetectorOverwrite = false;
		bool noCooldown = false;
		float jumpHeight = 0.0f;
		int movementType = 1; //default movement type: Fast
		char* movementTypeList[] = { "Normal", "Fast" };
		int selfBuffsType = 1; //default lifeskill buff: level 7
		char* selfBuffsTypeList[] = { "LEVEL 5", "LEVEL 7" };
	}

	//vehicle
	namespace Vehicle
	{
		bool activation = false;
		int acceleration = 149;
		int speed = 159;
		int turn = 145;
		int brake = 145;
	}

	namespace Manufacture
	{
		bool activation = false;
	}

	namespace ESP
	{
		int targetType = 0;
		char* targetTypeList[] = { "Player", "Monster", "NPC", "Vehicle", "Gate", "Alterego", "Collect", "Household", "Installation", "Deadbody", "Custom" };
		bool drawESP = false;
		bool drawESP_line = false;
		bool drawESP_circle = false;
		bool drawESP_name = false;
		bool drawESP_id = false;
		bool drawESP_level = false;
		bool drawESP_distance = false;
		bool drawWorldMap = false;
	}

	namespace Fishing
	{
		int fishGrade = 4; //default fish grade: Prized fish
		char* fishGradeList[] = { "White", "Regular", "Big", "Rare", "Prized" };
		bool activation = false;
		int currentGrade = 0;
		bool automateFishing = false;
		bool lockPosX = true;
		int freeSlots = 0;
		bool shutdownOnFull = false;
		float fishingPosX = NULL;
	}

	namespace Grinder
	{
		bool recordPath = false;
		int recordPathDelay = 200;
		bool showSavedPath = false;
		int lastWaypoint = 0;
		int grinderType = 1; //default grinder type: teleport
		char* grinderTypeList[] = { "Normal", "Teleport" };
		bool activate = false;
		bool pause = false;
		bool reloadCheck = false;
		bool playerDetection = false;
		bool animationLock = false;
		bool petLoot = false;
		bool teleportLooting = false;
		float teleportLootingRange = 600.0f;
		float monsterRange = 610.0f;
		bool monsterDetection = false;
	}

	namespace Camera
	{
		bool activation = false;
		bool advanced = false;
		float view1 = 0;
		float view2 = 0;
		float view3 = 0;
		float view4 = 0;
		float screenshot1 = 0;
		float screenshot2 = 0;
		float screenshot3 = 0;
		float screenshot4 = 0;
		float screenshot5 = 0;
	}
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