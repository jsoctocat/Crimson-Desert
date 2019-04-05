local VCK = CppEnums.VirtualKeyCode
local ScreenX = getScreenSizeX()
local ScreenY = getScreenSizeY()
local tDmg = 0
local Misses = 0
local dDmg = 0
local Hits = 0
local Resists = 0
local min = 0
local max = 0
local avg = 0
local DpsClk = os.time()
local DpsRcount = os.time()
local LogLength = 20
local DmgEnabled = true
local dMsgLog = Array.new()
local dPanel
local dText
local textMisses
local textHits
local textResisted
local textTitle
local textMinHit
local textAvgHit
local textMaxHit
local dMem
local perSecondDmg
local DpsTimer
local DpsRTimer
local UiBtn
local Mod_UI_Icon
local tAttacks
local pHits
local pMisses
local pResists

local GlobalKeyBinder_CheckKeyPressed = function(keyCode)
    return isKeyDown_Once(keyCode)
end

function dMessage(msg)
    if LogLength < dMsgLog:length() then
        dMsgLog:pop_front()
    end

    dMsgLog:push_back(msg)
    dText:SetText(dMsgLog:toString())
end

function addDmg(dmgnumber)
    DpsRTimer = os.difftime(os.time(), DpsRcount)

    if DpsRTimer > 10 then
        DpsClk = os.time()
        dDmg = 0
    end

    DpsTimer = os.difftime(os.time(), DpsClk)
    DpsRcount = os.time()
    tDmg = tDmg + dmgnumber
    dDmg = dDmg + dmgnumber
    perSecondDmg = dDmg / (DpsTimer)
    textTitle:SetText("<PAColor0xFFFF0000>DPS: " .. string.format("%.f", perSecondDmg) .. "<PAOldColor> <PAColor0xFF0099CC>TotalDmg: " .. string.format("%.f", tDmg) .. "<PAOldColor>")
    
    local dmg = 0 + dmgnumber
    
    if min == 0 then
        min = dmg
    end
    
    if dmg < min then
        min = dmg
    end
    
    if dmg > max then
        max = dmg
    end
    
    if Hits > 0 then
        avg = tDmg / Hits
    end
    
    textMinHit:SetText("MinHit: " .. min)
    textMaxHit:SetText("MaxHit: " .. max)
    textAvgHit:SetText("AvgHit: " .. string.format("%.f", avg))
end

function addMiss()
    Misses = Misses + 1
    tAttacks = Misses + Hits
    pHits = (Hits / tAttacks) * 100
    pMisses = (Misses / tAttacks) * 100
    pResists = (Resists / tAttacks) * 100
    textHits:SetText("Hits: " .. Hits .. "(" .. string.format("%.f", pHits) .. "%)")
    textMisses:SetText("Misses: " .. Misses .. "(" .. string.format("%.f", pMisses) .. "%)")
    textResisted:SetText("Resists: " .. Resists .. "(" .. string.format("%.f", pResists) .. "%)")
end

function addHit()
    Hits = Hits + 1
    tAttacks = Misses + Hits
    pHits = (Hits / tAttacks) * 100
    pMisses = (Misses / tAttacks) * 100
    pResists = (Resists / tAttacks) * 100
    textHits:SetText("Hits: " .. Hits .. "(" .. string.format("%.f", pHits) .. "%)")
    textMisses:SetText("Misses: " .. Misses .. "(" .. string.format("%.f", pMisses) .. "%)")
    textResisted:SetText("Resists: " .. Resists .. "(" .. string.format("%.f", pResists) .. "%)")
end

function addResisted()
    Resists = Resists + 1
    tAttacks = Misses + Hits
    pHits = (Hits / tAttacks) * 100
    pMisses = (Misses / tAttacks) * 100
    pResists = (Resists / tAttacks) * 100
    textHits:SetText("Hits: " .. Hits .. "(" .. string.format("%.f", pHits) .. "%)")
    textMisses:SetText("Misses: " .. Misses .. "(" .. string.format("%.f", pMisses) .. "%)")
    textResisted:SetText("Resists: " .. Resists .. "(" .. string.format("%.f", pResists) .. "%)")
end

function DamageFunction_OnDamage(attakeeKeyRaw, effectNumber, effectType, additionalDamageType, posFloat3, isTribeAttack, attackerActorKeyRaw, isNotRandom)
    if DmgEnabled == true then
        if (effectType == 96) or (effectType == 97) or (effectType == 93) then
            if (effectNumber == 0) then
                return
            end
        end
        
        local selfPlayer = getSelfPlayer()
        local attackeeIsSelfPlayer = (nil ~= selfPlayer) and (selfPlayer:getActorKey() == attakeeKeyRaw)
        
        if (attackeeIsSelfPlayer == false) then
            -- BackAttack = 0 || DownAttack = 2 || FrontAttack = 5
            if (effectType == 0) then
                local Dmg = tostring(effectNumber)
                Dmg = Dmg:gsub("-", "")
                dMessage("<PAColor0xFFFF9933>" .. Dmg .. "<PAOldColor>")
                addHit()
                addDmg(Dmg)
            elseif (effectType == 1) then
                local Dmg = tostring(effectNumber)
                Dmg = Dmg:gsub("-", "")
                dMessage("<PAColor0xFFFF0000>Crit: " .. Dmg .. "<PAOldColor>")
                addHit()
                addDmg(Dmg)
            elseif (effectType == 2) then
                local Dmg = tostring(effectNumber)
                Dmg = Dmg:gsub("-", "")
                dMessage("<PAColor0xFFFF99CC>Block: " .. Dmg .. "<PAOldColor>")
                addHit()
                addDmg(Dmg)
            elseif (effectType == 3) then
                local Dmg = tostring(effectNumber)
                Dmg = Dmg:gsub("-", "")
                dMessage("<PAColor0xFFFFFFFF>Impact: " .. Dmg .. "<PAOldColor>")
                addHit()
                addDmg(Dmg)
            elseif (effectType == 4) then
                addResisted()
                dMessage("<PAColor0xFF33FF99>Resisted<PAOldColor>")
            elseif (effectType == 5) then
                addMiss()
                dMessage("<PAColor0xFF0099CC>Miss<PAOldColor>")
            end
        end
    end
end

function HandleClickedReset()
    local messageboxData = {title = "Reset Damage Count", content = "Are you sure you want to reset the damage counter", functionYes = HandleClickedYes, functionNo = MessageBox_Empty_function, priority = CppEnums.PAUIMB_PRIORITY.PAUIMB_PRIORITY_LOW}
    MessageBox.showMessageBox(messageboxData)
end

function HandleClickedYes()
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFFFFFFFF>Reset<PAOldColor>")
    dDmg = 0
    tDmg = 0
    Hits = 0
    Misses = 0
    Resists = 0
    min = 0
    max = 0
    avg = 0
    textMinHit:SetText("MinHit: 0")
    textMaxHit:SetText("MaxHit: 0")
    textAvgHit:SetText("AvgHit: 0")
    textMisses:SetText("Misses: 0")
    textHits:SetText("Hits: 0")
    textResisted:SetText("Resists: 0")
    textTitle:SetText("<PAColor0xFFFF0000>DPS: 0<PAOldColor> <PAColor0xFF0099CC>TotalDmg: 0<PAOldColor>")
    dMsgLog = nil
    dMsgLog = Array.new()
    dText:SetText("")
    FreeMem()
end

function HandleClickCls()
    DmgEnabled = false
    Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Disabled", sub = "Damage Meter", addMsg = ""}, 4, 21)
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFFCC0000>Disabled<PAOldColor>")
    dPanel:SetShow(false)
end

function Display_Toggle()
    if isKeyPressed(VCK.KeyCode_MENU) and GlobalKeyBinder_CheckKeyPressed(VCK.KeyCode_D) then
        if DmgEnabled == true then
            DmgEnabled = false
            Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Disabled", sub = "Damage Meter", addMsg = ""}, 4, 21)
            Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFFCC0000>Disabled<PAOldColor>")
            dPanel:SetShow(false)
        else
            DmgEnabled = true
            Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Enabled", sub = "Damage Meter", addMsg = ""}, 4, 22)
            Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFF33CC00>Enabled<PAOldColor>")
            dPanel:SetShow(true)
        end
    end
end

function Display_ByUi()
    if DmgEnabled == true then
        DmgEnabled = false
        Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Disabled", sub = "Damage Meter", addMsg = ""}, 4, 21)
        Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFFCC0000>Disabled<PAOldColor>")
        dPanel:SetShow(false)
    else
        DmgEnabled = true
        Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Enabled", sub = "Damage Meter", addMsg = ""}, 4, 22)
        Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Damage Meter:<PAOldColor> <PAColor0xFF33CC00>Enabled<PAOldColor>")
        dPanel:SetShow(true)
    end
end

function Show_Icon()
    UiBtn:SetAlpha(1.0)
    TooltipSimple_Show(UiBtn, "Damage Meter  (<PAColor0xFF33CC66>ALT+D<PAOldColor>)")
end

function Hide_Icon()
    UiBtn:SetAlpha(0.6)
    TooltipSimple_Hide()
end

function Update_Mem()
    if DmgEnabled == true then
        if StaticTickCount == nil then
            StaticTickCount = 0
        end
        local currentTickCount = getTickCount32()
        if currentTickCount >= StaticTickCount + 1000 then
            StaticTickCount = currentTickCount
            dMem:SetText("<PAColor0xFF444444>" .. string.format("%.2f", GetMem() / 1024) .. " MB<PAOldColor>")
        end
    end
end

function GetMem()
    return collectgarbage("count", 0)
end

function FreeMem()
    collectgarbage("collect")
end

local function CreateDPSPanel()
    Mod_UI_Icon = UI.createPanel("DmgIcon", 9692)
    Mod_UI_Icon:SetShow(true, false)
    Mod_UI_Icon:SetSize(33, 33)
    Mod_UI_Icon:SetPosX(ScreenX - 431)
    Mod_UI_Icon:SetPosY(ScreenY - 36)
    Mod_UI_Icon:SetIgnore(true)
    
    UiBtn = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_BUTTON, Mod_UI_Icon, "Ui_Dmg")
    UiBtn:SetSize(33, 33)
    UiBtn:ActiveMouseEventEffect(true)
    UiBtn:SetPosX(0)
    UiBtn:SetPosY(0)
    UiBtn:ChangeTextureInfoName("New_UI_Common_forLua/widget/uicontrol/ui_control_00.dds")
    UiBtn:getBaseTexture():setUV(setTextureUV_Func(UiBtn, 44, 205, 80, 239))
    UiBtn:setRenderTexture(UiBtn:getBaseTexture())
    UiBtn:SetAlpha(0.6)
    UiBtn:addInputEvent("Mouse_On", "Show_Icon()")
    UiBtn:addInputEvent("Mouse_Out", "Hide_Icon()")
    UiBtn:addInputEvent("Mouse_LUp", "Display_ByUi()")
    UiBtn:SetIgnore(false)
    
    dPanel = UI.createPanel("DmgPanel", 8192)
    dPanel:SetShow(false, false)
    dPanel:SetDragEnable(true)
    dPanel:SetIgnore(false)
    dPanel:SetSize(300, 550)
    dPanel:SetPosX(30)
    dPanel:SetPosY(200)
    dPanel:ActiveMouseEventEffect(true)
    dPanel:ChangeTextureInfoName("New_UI_Common_forLua/window/inventory/inven_main.dds")
    dPanel:getBaseTexture():setUV(setTextureUV_Func(dPanel, 7, 6, 405, 542))
    dPanel:setRenderTexture(dPanel:getBaseTexture())
    dPanel:SetAlpha(0.8)
    dPanel:SetDragAll(true)
    
    textTitle = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textTitle")
    textTitle:SetSize(300, 30)
    textTitle:SetPosX(50)
    textTitle:SetPosY(2)
    textTitle:SetText("<PAColor0xFFFF0000>DPS: 0<PAOldColor> <PAColor0xFF0099CC>TotalDmg: 0<PAOldColor>")
    textTitle:SetTextHorizonLeft()
    
    dText = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "StaticText_Dmg")
    dText:SetPosY(150)
    dText:SetPosX(9)
    dText:SetSize(190, 60)
    dText:SetTextVerticalTop()
    dText:SetTextHorizonLeft()
    
    local rstBtn = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_BUTTON, dPanel, "Btn_Rst")
    rstBtn:addInputEvent("Mouse_LUp", "HandleClickedReset()")
    rstBtn:SetSize(45, 20)
    rstBtn:ActiveMouseEventEffect(true)
    rstBtn:SetPosX(190)
    rstBtn:SetPosY(520)
    rstBtn:ChangeTextureInfoName("New_UI_Common_forLua/Default/Default_Buttons.dds")
    rstBtn:getBaseTexture():setUV(setTextureUV_Func(rstBtn, 1, 131, 86, 153))
    rstBtn:setRenderTexture(rstBtn:getBaseTexture())
    rstBtn:SetText("Reset")
    
    textHits = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textHits")
    textHits:SetSize(190, 20)
    textHits:SetPosX(9)
    textHits:SetPosY(50)
    textHits:SetText("Hits: 0")
    textHits:SetTextHorizonLeft()
    
    textMinHit = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textMinHit")
    textMinHit:SetSize(190, 20)
    textMinHit:SetPosX(150)
    textMinHit:SetPosY(50)
    textMinHit:SetText("MinHit: 0")
    textMinHit:SetTextHorizonLeft()
    
    textMisses = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textMisses")
    textMisses:SetSize(190, 20)
    textMisses:SetPosX(9)
    textMisses:SetPosY(70)
    textMisses:SetText("Misses: 0")
    textMisses:SetTextHorizonLeft()
    
    textAvgHit = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textAvgHit")
    textAvgHit:SetSize(190, 20)
    textAvgHit:SetPosX(150)
    textAvgHit:SetPosY(70)
    textAvgHit:SetText("AvgHit: 0")
    textAvgHit:SetTextHorizonLeft()
    
    textResisted = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textResisted")
    textResisted:SetSize(190, 20)
    textResisted:SetPosX(9)
    textResisted:SetPosY(90)
    textResisted:SetText("Resists: 0")
    textResisted:SetTextHorizonLeft()
    
    textMaxHit = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "textMaxHit")
    textMaxHit:SetSize(190, 20)
    textMaxHit:SetPosX(150)
    textMaxHit:SetPosY(90)
    textMaxHit:SetText("MaxHit: 0")
    textMaxHit:SetTextHorizonLeft()
    
    dMem = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, dPanel, "Dmg_Mem")
    dMem:SetSize(110, 20)
    dMem:SetPosX(20)
    dMem:SetPosY(520)
    dMem:SetTextHorizonRight()
    
    Proc_ShowMessage_Ack_WithOut_ChattingMessage_For_RewardSelect({main = "Damage Meter", sub = "", addMsg = ""}, 4, 9)
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>DPS-Meter - UiMod -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>")
    
    DmgEnabled = false
end

local _sinGaugeBar = (UI.getChildControl)(Panel_SinGauge, "Static_SinGauge")

function PerfectCatch()
    -- _sinGaugeBar:SetSize(273, 20)
    if(_sinGaugeBar:GetSizeX() >= 273) then
        MiniGame_SinGauge_KeyPress(4)
    end

    ((getSelfPlayer()):get()):SetMiniGameResult(3)
end

function CheckFishingState(fDelta)
    if(Panel_SinGauge:GetShow() == true) then
        PerfectCatch()
    end
end

local _defaultSlotNo = 255
local _materialSlotNoList = {_defaultSlotNo, _defaultSlotNo, _defaultSlotNo, _defaultSlotNo; [0] = _defaultSlotNo}
local _ACTIONNAME = ""
local _usingInstallationType = (CppEnums.InstallationType).TypeCount

local getWarehouse = function()
    return warehouse_get(getCurrentWaypointKey())
end

function pushItemToWarehouse(slot, count, selfPlayerActorKey)
    warehouse_pushFromInventoryItemByNpc(0, slot, count, selfPlayerActorKey)
end

function openManufacture()
	-- if(Panel_Manufacture:GetShow() == false) then
	-- 	Manufacture_Show(nil, (CppEnums.ItemWhereType).eWarehouse, true, nil, getCurrentWaypointKey())
	-- end

    _materialSlotNoList[0] = _defaultSlotNo
end

function warehouseShake(slot)
    -- Manufacture_Button_LUp_Shake(false)
    _ACTIONNAME = "MANUFACTURE_SHAKE"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function warehouseGrind(slot)
    -- Manufacture_Button_LUp_Grind(false)
    _ACTIONNAME = "MANUFACTURE_GRIND"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function warehouseChop(slot)
    -- Manufacture_Button_LUp_FireWood(false)
    _ACTIONNAME = "MANUFACTURE_FIREWOOD"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function warehouseDry(slot)
    -- Manufacture_Button_LUp_Dry(false)
    _ACTIONNAME = "MANUFACTURE_DRY"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function warehouseThinning(slot)
    -- Manufacture_Button_LUp_Thinning(false)
    _ACTIONNAME = "MANUFACTURE_THINNING"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function warehouseHeat(slot)
    -- Manufacture_Button_LUp_Heat(false)
    _ACTIONNAME = "MANUFACTURE_HEAT"
    _materialSlotNoList[0] = slot
    manufactureStart()
end

function manufactureStart()
	-- Manufacture_Mouse_LUp()

	-- if(Panel_Manufacture:GetShow() == true) then
	-- 	FGlobal_HideDialog()
	-- 	ManufactureHideAni()
	-- end
    
    Manufacture_Do(_usingInstallationType, _ACTIONNAME, (CppEnums.ItemWhereType).eWarehouse, _materialSlotNoList[0], _materialSlotNoList[1], _materialSlotNoList[2], _materialSlotNoList[3], _materialSlotNoList[4])
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

ItemMarketSetItem_GetAllItemCheck = function()
    ItemMarketSetItem_GetAllItem()
end

function InitItemMarketButtons()
    -- btn_GetAll = (UI.getChildControl)(Panel_Window_ItemMarket_ItemSet, "Button_GetAllItem")
    -- btn_GetAll:SetPosX(300)
    -- btn_GetAll:SetPosY(75)
    -- btn_GetAll:SetText("Collect All")
    -- local existingBtn = (UI.getChildControl)(Panel_Window_ItemMarket_ItemSet, "Button_GetAllItem")
    
    -- if existingBtn ~= nil then
    -- 	UI.deleteControl(existingBtn)
    -- end
    
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

function OverrideItemMarketButtons()
    if Panel_Window_ItemMarket_ItemSet:GetShow() then
        btn_GetAll:SetShow(true)
        btn_CancelAll:SetShow(true)
        return
    end
    
    if btn_GetAll:GetShow() == true then
        btn_GetAll:SetShow(false)
        btn_CancelAll:SetShow(false)
    end
end

InitItemMarketButtons()

BattleGauge_EndTimer = function(deltaTime)
    ((getSelfPlayer()):get()):SetMiniGameResult(0)
    Panel_Minigame_BattleGauge_End()
end

HandleClicked_ItemMarketItemSet_ItemWithdrawals = function(itemEnchantKeyRaw, index)
    toWhereType = (CppEnums.ItemWhereType).eWarehouse
    requestWithdrawSellingItemMoneyForItemMarket(itemEnchantKeyRaw, index, toWhereType)
end

FillGauge_EndTimer = function(deltaTime)
    ((getSelfPlayer()):get()):SetMiniGameResult(0)
    Panel_Minigame_FillGauge_End()
end

MiniGame_GaugeBarMoveCalc = function(fDeltaTime)
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

function UpdatePerFrame(deltatime)
    CheckFishingState(deltatime)
    CheckMilkyGame()
    CheckMessageBoxState()
    CheckMinigameState()
    tryCollectMoney()
    OverrideItemMarketButtons()
    Update_Mem()
    FreeMem()
end

local function registEvents()
    registerEvent("addDamage", "DamageFunction_OnDamage")
    registerEvent("EventGlobalKeyBinder", "Display_Toggle")
    registerEvent("FromClient_LuaTimer_UpdatePerFrame", "UpdatePerFrame()")
end

function LoadMods()
    CreateDPSPanel()
    registEvents()
    
    Proc_ShowMessage_Ack("<PAColor0xFFB69A80>UI-Mods -<PAOldColor> <PAColor0xFF0099FF>Loaded<PAOldColor>")
end

local function unregistEvents()
    unregisterEvent("addDamage", "DamageFunction_OnDamage")
    unregisterEvent("EventGlobalKeyBinder", "Display_Toggle")
    unregisterEvent("FromClient_LuaTimer_UpdatePerFrame", "UpdatePerFrame()")
    -- unregisterEvent( "FromClient_TradeGameStart","GameStart")
end

function UnloadMods()
    unregistEvents()
    UI.deletePanel("DmgPanel")
    UI.deletePanel("DmgIcon")
    FreeMem()
end

LoadMods()
