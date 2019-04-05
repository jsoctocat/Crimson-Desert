local UI_CT = CppEnums.ChatType
local UI_CST = CppEnums.ChatSystemType
local VCK = CppEnums.VirtualKeyCode

--function FreeMem()
    --collectgarbage("collect")
--end

function CheckFishingState(fDelta)
    if(Panel_SinGauge:GetShow() == true) then
        getSelfPlayer():get():SetMiniGameResult(3)
    end
	
	if(Panel_MiniGame_Jaksal:GetShow() == true) then
        getSelfPlayer():get():SetMiniGameResult(0)
    end
end

local _defaultSlotNo = 255
local _materialSlotNoList = {_defaultSlotNo, _defaultSlotNo, _defaultSlotNo, _defaultSlotNo; [0] = _defaultSlotNo}
local _ACTIONNAME = ""
local _usingInstallationType = (CppEnums.InstallationType).TypeCount

local function getWarehouse()
    return warehouse_get(getCurrentWaypointKey())
end

function pushItemToWarehouse(slot, count, selfPlayerActorKey)
    warehouse_pushFromInventoryItemByNpc(0, slot, count, selfPlayerActorKey)
end

function openWarehouseManufacture()
	-- if(Panel_Manufacture:GetShow() == false) then
	-- 	Manufacture_Show(nil, (CppEnums.ItemWhereType).eWarehouse, true, nil, getCurrentWaypointKey())
	-- end

    _materialSlotNoList[0] = _defaultSlotNo
end

function openInventoryManufacture()
	-- if(Panel_Manufacture:GetShow() == false) then
	-- 	Manufacture_Show(nil, (CppEnums.ItemWhereType).eInventory, true, nil, getCurrentWaypointKey())
	-- end

    _materialSlotNoList[0] = _defaultSlotNo
end

function warehouseShake(slot)
    -- Manufacture_Button_LUp_Shake(false)
    _ACTIONNAME = "MANUFACTURE_SHAKE"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryShake(slot)
    -- Manufacture_Button_LUp_Shake(false)
    _ACTIONNAME = "MANUFACTURE_SHAKE"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseGrind(slot)
    -- Manufacture_Button_LUp_Grind(false)
    _ACTIONNAME = "MANUFACTURE_GRIND"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryGrind(slot)
    -- Manufacture_Button_LUp_Grind(false)
    _ACTIONNAME = "MANUFACTURE_GRIND"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseChop(slot)
    -- Manufacture_Button_LUp_FireWood(false)
    _ACTIONNAME = "MANUFACTURE_FIREWOOD"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryChop(slot)
    -- Manufacture_Button_LUp_FireWood(false)
    _ACTIONNAME = "MANUFACTURE_FIREWOOD"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseDry(slot)
    -- Manufacture_Button_LUp_Dry(false)
    _ACTIONNAME = "MANUFACTURE_DRY"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryDry(slot)
    -- Manufacture_Button_LUp_Dry(false)
    _ACTIONNAME = "MANUFACTURE_DRY"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseThinning(slot)
    -- Manufacture_Button_LUp_Thinning(false)
    _ACTIONNAME = "MANUFACTURE_THINNING"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryThinning(slot)
    -- Manufacture_Button_LUp_Thinning(false)
    _ACTIONNAME = "MANUFACTURE_THINNING"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseHeat(slot)
    -- Manufacture_Button_LUp_Heat(false)
    _ACTIONNAME = "MANUFACTURE_HEAT"
    _materialSlotNoList[0] = slot
    warehouseManufactureStart()
end

function inventoryHeat(slot)
    -- Manufacture_Button_LUp_Heat(false)
    _ACTIONNAME = "MANUFACTURE_HEAT"
    _materialSlotNoList[0] = slot
    inventoryManufactureStart()
end

function warehouseManufactureStart()
	-- Manufacture_Mouse_LUp()

	-- if(Panel_Manufacture:GetShow() == true) then
	-- 	FGlobal_HideDialog()
	-- 	ManufactureHideAni()
	-- end

    Manufacture_Do(_usingInstallationType, _ACTIONNAME, (CppEnums.ItemWhereType).eWarehouse, _materialSlotNoList[0], _materialSlotNoList[1], _materialSlotNoList[2], _materialSlotNoList[3], _materialSlotNoList[4])
end

function inventoryManufactureStart()
	-- Manufacture_Mouse_LUp()

	-- if(Panel_Manufacture:GetShow() == true) then
	-- 	FGlobal_HideDialog()
	-- 	ManufactureHideAni()
	-- end

    Manufacture_Do(_usingInstallationType, _ACTIONNAME, (CppEnums.ItemWhereType).eInventory, _materialSlotNoList[0], _materialSlotNoList[1], _materialSlotNoList[2], _materialSlotNoList[3], _materialSlotNoList[4])
end

function pushItemFromWarehouse(slot)
	-- local warehouseWrapper = getWarehouse()

	-- if warehouseWrapper == nil then
	-- 	return
	-- end

	-- local itemWrapper = warehouseWrapper:getItem(slot)

	-- if itemWrapper == nil then
	-- 	return
	-- end

	-- Manufacture_PushItemFromWarehouse(slot, itemWrapper, 1)
    
    _materialSlotNoList[0] = slot
end

local title = (UI.getChildControl)(Panel_Win_System, "Static_Text_Title")
local titleText = ""

function CheckMessageBoxState()
    if (Panel_Win_System:IsShow()) then
        titleText = title:GetText()
        if(titleText == "Party Invite" or titleText == "Challenge to a Duel" or titleText == "Confirm Trade Cancellation") then
            allClearMessageData()
        end
    end
end

function CheckMinigameState()
    if(Panel_MiniGame_Gradient_Y:GetShow()) then
        Panel_Minigame_GradientY_End()
    end
end

alrdyCollected = false;

local function getMemberData()
    local myGuildInfo = ToClient_GetMyGuildInfoWrapper()
    local memberData = nil
    local memberCount = myGuildInfo:getMemberCount()
    for memberIdx = 0, memberCount - 1 do
        memberData = myGuildInfo:getMember(memberIdx)
        if memberData:isSelf() then
            break
        end
    end
    return memberData
end

function tryCollectMoney()
    if alrdyCollected then
        return 0
    end

    local memberData = getMemberData()

    if memberData == nil then
        alrdyCollected = true
        return 0
    end

    if memberData:isCollectableBenefit() == false then
        alrdyCollected = true
        return 0
    end

    ToClient_TakeMyGuildBenefit(false)
    alrdyCollected = true
    
end

function ItemMarketItemSetCancelAll()
    local myItemCount = getItemMarketMyItemsCount()
    for i = 0, myItemCount - 1 do
        local myItemInfo = getItemMarketMyItemByIndex(i)
        if myItemInfo ~= nil then
            local iess = myItemInfo:getItemEnchantStaticStatusWrapper()
            if iess ~= nil and myItemInfo:isTraded() == false then
                requestCancelMyRegistedItemForItemMarket(((iess:get())._key):get(), i)
            end
        end
    end
end

function InitItemMarketButtons()
    btn_ModGetAll = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_BUTTON, Panel_Window_ItemMarket_ItemSet, "Button_GetAll")
    btn_ModGetAll:addInputEvent("Mouse_LUp", "ItemMarketSetItem_GetAllItem()")
    btn_ModGetAll:SetSize(120, 35)
    btn_ModGetAll:ActiveMouseEventEffect(true)
    btn_ModGetAll:SetPosX(300)
    btn_ModGetAll:SetPosY(75)
    btn_ModGetAll:ChangeTextureInfoName("new_ui_common_forlua/default/default_buttons.dds")
    btn_ModGetAll:getBaseTexture():setUV(setTextureUV_Func(btn_ModGetAll, 1, 156, 155, 188))
    btn_ModGetAll:setRenderTexture(btn_ModGetAll:getBaseTexture())
    btn_ModGetAll:SetText("Collect All")

    btn_ModCancelAll = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_BUTTON, Panel_Window_ItemMarket_ItemSet, "Button_CancelAll")
    btn_ModCancelAll:addInputEvent("Mouse_LUp", "ItemMarketItemSetCancelAll()")
    btn_ModCancelAll:SetSize(120, 35)
    btn_ModCancelAll:ActiveMouseEventEffect(true)
    btn_ModCancelAll:SetPosX(450)
    btn_ModCancelAll:SetPosY(75)
    btn_ModCancelAll:ChangeTextureInfoName("new_ui_common_forlua/default/default_buttons.dds")
    btn_ModCancelAll:getBaseTexture():setUV(setTextureUV_Func(btn_ModCancelAll, 1, 156, 155, 188))
    btn_ModCancelAll:setRenderTexture(btn_ModCancelAll:getBaseTexture())
    btn_ModCancelAll:SetText("Cancel All")
end

InitItemMarketButtons()

function BattleGauge_EndTimer(deltaTime)
    ((getSelfPlayer()):get()):SetMiniGameResult(0)
    Panel_Minigame_BattleGauge_End()
end

function HandleClicked_ItemMarketItemSet_ItemWithdrawals(itemEnchantKeyRaw, index)
    toWhereType = (CppEnums.ItemWhereType).eWarehouse
    requestWithdrawSellingItemMoneyForItemMarket(itemEnchantKeyRaw, index, toWhereType)
end

function FillGauge_EndTimer(deltaTime)
    ((getSelfPlayer()):get()):SetMiniGameResult(0)
    Panel_Minigame_FillGauge_End()
end

function MiniGame_GaugeBarMoveCalc(fDeltaTime)
    _gaugeBar:SetPosX(centerPos)

    data.lastClickTime = data.lastClickTime + fDeltaTime
    local currentPos = data.currentPos + data.currentSpeed * fDeltaTime
    if currentPos < 0 then
        currentPos = 0
        ((getSelfPlayer()):get()):SetMiniGameResult(0)
    else
        if currentPos > 1 then
            currentPos = 1
            ((getSelfPlayer()):get()):SetMiniGameResult(3)
        end
    end
end

function CheckMilkyGame()
    if Panel_MiniGame_PowerControl:GetShow() then
        ToClient_MinigameResult(1, true)
        FGlobal_MiniGame_PowerControl()
        getSelfPlayer():get():SetMiniGameResult(0)
    end
end

function Panel_Looting_Update(empty)
    Panel_Looting_Value_isCloseLooting = true
	looting_pickAllItemToPlayer()
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

function AutoPotion()
  local selfPlayer = getSelfPlayer():get()
  local hp = selfPlayer:getHp()
  local maxhp = selfPlayer:getMaxHp()
  local mp = selfPlayer:getMp()
  local maxmp = selfPlayer:getMaxMp()
  local usehp = false
  local usemp = false
  if hp / maxhp < 0.90 then --use it when less than 90%
    usehp = true
  end
  if mp / maxmp < 0.20 then --use it when less than 20%
    usemp = true
  end
  local inventory = selfPlayer:getInventoryByType(CppEnums.ItemWhereType.eInventory)
  if usehp then
    tempItemEnchantKey = ItemEnchantKey(580, 0) --HP Potion (Extra Large)
    slotValue = inventory:getSlot(tempItemEnchantKey)
    if 255 == slotValue then
      return
    end
    local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, slotValue)
    if remainTime == 0 and not getSelfPlayer():isDead() then
      inventoryUseItem(CppEnums.ItemWhereType.eInventory, slotValue, 0, true)
    end
  end
  if usemp then
    tempItemEnchantKey = ItemEnchantKey(582, 0) --WP Potion (Extra Large)
    slotValue = inventory:getSlot(tempItemEnchantKey)
    if 255 == slotValue then
      return
    end
    local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, slotValue)
    if remainTime == 0 and not getSelfPlayer():isDead() then
      inventoryUseItem(CppEnums.ItemWhereType.eInventory, slotValue, 0, true)
    end
  end
end

--HOTKEYS START
local Timer1 = nil
function toggleFunctions(key)
	if key == 0 then
		if Timer1 == nil then
			Timer1 = luaTimer_AddEvent(AutoPotion, 100, true, 100)
			alertMessage('AutoPotion', 'ON', 1)
		else
			luaTimer_RemoveEvent(Timer1)
			Timer1 = nil
			alertMessage('AutoPotion', 'OFF', 0)
		end
	elseif key == 9 then
		alertMessage('Reload UI')
		ToClient_excuteReloadUI()
	end
end

function PaGlobal_GlobalKeyBinder.Process_ChattingMacro()
  if false == isKeyPressed(VCK.KeyCode_MENU) then
    return false
  end
  --if false == isKeyPressed(VCK.KeyCode_SHIFT) then
    --return false
  --end
  local ii
  for ii = VCK.KeyCode_0, VCK.KeyCode_9 do
    local key = ii - VCK.KeyCode_0 - 1
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

function UpdatePerFrame(deltatime)
    CheckFishingState(deltatime)
    CheckMessageBoxState()
    CheckMilkyGame()
    CheckMinigameState()
	PaGlobal_GlobalKeyBinder.Process_ChattingMacro()
    --tryCollectMoney()
    --FreeMem()
end

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

local function registEvents()
    registerEvent("FromClient_LuaTimer_UpdatePerFrame", "UpdatePerFrame()")
end

function LoadMods()
    registEvents()
    
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>UI-Mods -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>")
end

LoadMods()