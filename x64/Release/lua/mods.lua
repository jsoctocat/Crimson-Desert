local VCK = CppEnums.VirtualKeyCode

function alertMessage(text, textb, isgreen)
	local color = "0xFFB69A80"
	
	if textb ~= nil then
		local colortoggle = "0xFFFF0000"
		if isgreen == 1 then colortoggle = "0xFF7CFC00" end
		Proc_ShowMessage_Ack("<PAColor" .. color .. ">" .. text .. "<PAOldColor> <PAColor" .. colortoggle .. ">" .. textb .. "<PAOldColor>")
	else
		Proc_ShowMessage_Ack("<PAColor" .. color .. ">" .. text .. "<PAOldColor>")
	end
end

function MoveTo_Fishing()
	ToClient_DeleteNaviGuideByGroup(0) --delete navigation waypoint
	local targetPos = float3(-140650.218750, -8181.845703, 1076128.500000)
	local targetNaviKey = ToClient_WorldMapNaviStart( targetPos, NavigationGuideParam(), false, false )
	local selfPlayer = getSelfPlayer():get()
	selfPlayer:setNavigationMovePath(targetNaviKey)
	selfPlayer:checkNaviPathUI(targetNaviKey)
end

function Inventory_DeleteItem(slotNo)
	local deleteSlotNo = slotNo + 1; -- slot number + 1 gives the real slot number that's shown in game because there is 1 hidden slot which is silver
    local whereType = Inventory_GetCurrentInventoryType()
    local itemWrapper = getInventoryItemByType(whereType, deleteSlotNo)
    if nil == itemWrapper then
      return
    end
	local itemCount = itemWrapper:get():getCount_s64()
    deleteItem(getSelfPlayer():getActorKey(), whereType, deleteSlotNo, itemCount)
end

function FGlobal_HandleClicked_petControl_AllSeal(groupIndex)
  local sealPetCount = ToClient_getPetSealedList()
  local maxUnsealCount = ToClient_getPetUseMaxCount()
  FGlobal_HandleClicked_petControl_AllUnSeal(groupIndex)
  if 0 == sealPetCount then
    return
  end
  for petIndex = 0, sealPetCount - 1 do
    local isDuplication = false
    local petData = ToClient_getPetSealedDataByIndex(petIndex)
    local petNo_s64 = petData._petNo
    if checkUnSealGroupList[groupIndex][Int64toInt32(petNo_s64)] then
      for index = 0, maxUnsealCount - 1 do
        local PetUnSealData = ToClient_getPetUnsealedDataByIndex(index)
        if nil ~= PetUnSealData then
          local unsealPetNo_s64 = PetUnSealData:getPcPetNo()
          if petNo_s64 == unsealPetNo_s64 then
            isDuplication = true
          end
        end
      end
      if false == isDuplication then
        petListNew_UnSeal(tostring(petNo_s64), true)
		ToClient_requestChangePetLootingType(petNo_s64, 2)
      end
    end
  end
end

function PaGlobal_Looting_All:lootingUpdate(isEmpty)
	looting_pickAllItemToPlayer()
end

function BattleGauge_EndTimer(deltaTime)
	getSelfPlayer():get():SetMiniGameResult(0)
    Panel_Minigame_BattleGauge_End()
end

function FillGauge_EndTimer(deltaTime)
    getSelfPlayer():get():SetMiniGameResult(0)
    Panel_Minigame_FillGauge_End()
end

function MiniGame_GaugeBarMoveCalc(fDeltaTime)
    _gaugeBar:SetPosX(centerPos)

    data.lastClickTime = data.lastClickTime + fDeltaTime
    local currentPos = data.currentPos + data.currentSpeed * fDeltaTime
    if currentPos < 0 then
        currentPos = 0
        getSelfPlayer():get():SetMiniGameResult(0)
    else
        if currentPos > 1 then
            currentPos = 1
            getSelfPlayer():get():SetMiniGameResult(3)
        end
    end
end

function CheckMiniGamesState(fDelta)
	--Fishing
    if(Panel_SinGauge:GetShow() == true) then
        getSelfPlayer():get():SetMiniGameResult(3)
    end
	
	--Harpoon
	if(Panel_MiniGame_Jaksal:GetShow() == true) then
        getSelfPlayer():get():SetMiniGameResult(0)
    end
	
	--Miking Cows
	if Panel_MiniGame_PowerControl:GetShow() then
        ToClient_MinigameResult(1, true)
        FGlobal_MiniGame_PowerControl()
        getSelfPlayer():get():SetMiniGameResult(0)
    end
	
	--Fail Horse Skills
	if(Panel_MiniGame_Gradient_Y:GetShow()) then
        Panel_Minigame_GradientY_End()
    end
end

local spiritClass = {
  [0] = 0,
  12,
  19,
  20,
  21,
  23,
  25,
  26
}
local MainPotionData = {
  [0] = 502,
  513,
  514,
  517,
  518,
  519,
  524,
  525,
  528,
  529,
  530,
  538,
  551,
  552,
  553,
  554,
  555,
  580,
  17568,
  17569,
  19932,
  19933,
  19934,
  19935
}
local SubPotionData = {
  [1] = {
    [0] = 503,
    520,
    521,
    522,
    526,
    527,
    515,
    516,
    531,
    532,
    533,
    810,
    17570,
    17571,
    17680,
    17685,
    17686,
    17687,
    17688,
    18854,
    19936,
    19937,
    19938
  },
  [2] = {
    [0] = 582,
	591,
    592,
    593,
    594,
    810,
    827,
    828,
    829,
    830,
    16334,
    17707,
    17708,
    17709,
    17710
  },
  [3] = {
    [0] = 582,
	595,
    596,
    597,
    598,
    810,
    831,
    832,
    833,
    834,
    17711,
    17712,
    17713,
    17714
  }
}
local AutoPotionSetting = {
	--_currentHpKey = nil,
	--_currentMpKey = nil,
	_currentHpInvenSlot = nil,
	_currentMpInvenSlot = nil,
	_currentHpRate = 98,
	_currentMpRate = 25,
	_currentClassType = nil
}
function AutoPotionSetting:Clear()
	--_currentHpKey = nil
	--_currentMpKey = nil
	_currentHpInvenSlot = nil
	_currentMpInvenSlot = nil
	--self._currentHpRate = nil
	--self._currentMpRate = nil
	self._currentClassType = nil
end
function InitializeAutoPotion()
	local self = AutoPotionSetting
	local selfPlayer = getSelfPlayer()
	if nil == selfPlayer then
		return
	end
	
	local classType = selfPlayer:getClassType()
	self._currentClassType = 1 --MP
	
	for ii = 0, #spiritClass do 
		if classType == spiritClass[ii] then
			self._currentClassType = 2 --WP
		end
	end
	
	if classType == 24 then --24 is Valkyrie then set the MP type to SP
		self._currentClassType = 3 --SPwa
	end
	
	--Get HP Potion from QuickSlot
	for i = 0, 19 do
		local quickSlotInfo = getQuickSlotItem(i)
		if quickSlotInfo ~= nil and (CppEnums.QuickSlotType.eItem == quickSlotInfo._type or CppEnums.QuickSlotType.eCashItem == quickSlotInfo._type) then
			local itemKey = quickSlotInfo._itemKey:get()
			for idx, value in pairs (MainPotionData) do
				if itemKey == value then
					local inventoryType = QuickSlot_GetInventoryTypeFrom(quickSlotInfo._type)
					local inventory = selfPlayer:get():getInventoryByType(inventoryType)
					self._currentHpInvenSlot = inventory:getSlot(quickSlotInfo._itemKey)
					--self._currentHpKey = ItemEnchantKey(itemKey, 0)		
				end
			end
		end
	end
	
	--Get MP Potion from QuickSlot
	for i = 0, 19 do
		local quickSlotInfo = getQuickSlotItem(i)
		if quickSlotInfo ~= nil and (CppEnums.QuickSlotType.eItem == quickSlotInfo._type or CppEnums.QuickSlotType.eCashItem == quickSlotInfo._type) then
			local itemKey = quickSlotInfo._itemKey:get()
			for idx, value in pairs (SubPotionData[self._currentClassType]) do
				if itemKey == value then
					local inventoryType = QuickSlot_GetInventoryTypeFrom(quickSlotInfo._type)
					local inventory = selfPlayer:get():getInventoryByType(inventoryType)
					self._currentMpInvenSlot = inventory:getSlot(quickSlotInfo._itemKey)
					--self._currentMpKey = ItemEnchantKey(itemKey, 0)
				end
			end
		end
	end
end
function AutoPotion()
	local self = AutoPotionSetting
	local selfPlayer = getSelfPlayer():get()
	local hp = selfPlayer:getHp()
	local maxhp = selfPlayer:getMaxHp()
	local mp = selfPlayer:getMp()
	local maxmp = selfPlayer:getMaxMp()
	--local inventory = selfPlayer:getInventoryByType(CppEnums.ItemWhereType.eInventory)
	
	if hp / maxhp < self._currentHpRate/100 then
		--slotValue = inventory:getSlot(self._currentHpKey)
		--if 255 == slotValue then
			--return
		--end
		local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, self._currentHpInvenSlot)
		if remainTime == 0 and not getSelfPlayer():isDead() then
			inventoryUseItem(CppEnums.ItemWhereType.eInventory, self._currentHpInvenSlot, 0, true)
		end
	end
	if mp / maxmp < self._currentMpRate/100 then
		local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, self._currentMpInvenSlot)
		if remainTime == 0 and not getSelfPlayer():isDead() then
			inventoryUseItem(CppEnums.ItemWhereType.eInventory, self._currentMpInvenSlot, 0, true)
		end
	end
end

--HOTKEYS START
local HotKeyTimer = {}
function toggleFunctions(key)
	if key == 1 then
		if HotKeyTimer[key] == nil then
			InitializeAutoPotion()
			HotKeyTimer[key] = luaTimer_AddEvent(AutoPotion, 100, true, 100)
			alertMessage("AutoPotion", "ON", 1)
		else
			luaTimer_RemoveEvent(HotKeyTimer[key])
			HotKeyTimer[key] = nil
			AutoPotionSetting:Clear()
			alertMessage("AutoPotion", "OFF", 0)
		end
	elseif key == 4 then
		PaGlobalFunc_MarketPlace_OpenByMaid()
	elseif key == 9 then
		alertMessage("Collected Lua Garbage")
		collectgarbage("collect")
	end
end

function MenuHotKeyBinder()
	if false == isKeyPressed(VCK.KeyCode_MENU) then
		return false
	end
	
	local ii
	for ii = VCK.KeyCode_0, VCK.KeyCode_9 do
		local key = ii - VCK.KeyCode_0
		if key < 0 then
			key = VCK.KeyCode_9 - VCK.KeyCode_0
		end
		if isKeyDown_Once(ii) then
			toggleFunctions(key)
			return true
		end
	end
	
	return false
end
--HOTKEYS END

function UpdatePerFrame(fDelta)
    CheckMiniGamesState()
	MenuHotKeyBinder()
end

local function registEvents()
    registerEvent("FromClient_LuaTimer_UpdatePerFrame", "UpdatePerFrame")
end

function RegistAllEvents()
    registEvents()
	
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>UI-Mods -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>")
end

RegistAllEvents()