-- script.lua
local selfPlayer = getSelfPlayer():get()
FishGrade = selfPlayer:getFishGrade()
fishLevel = selfPlayer:getLifeExperienceLevel(1)
currenthp = selfPlayer:getHp()
maxhp = selfPlayer:getMaxHp()
currentmp = selfPlayer:getMp()
maxmp = selfPlayer:getMaxMp()
currentWP = getSelfPlayer():getWp()
currentMaxWp = getSelfPlayer():getMaxWp()
freeInventoryCount = selfPlayer:getInventory():getFreeCount()
maxInventoryCount = selfPlayer:getInventory():size()
invenSize = selfPlayer:getInventorySlotCount(true)
inventory = selfPlayer:getInventory()
userNo = selfPlayer:getUserNo()
playerLevel = selfPlayer:getLevel()
local needExp = Int64toInt32(selfPlayer:getNeedExp_s64())
local currentexp = Int64toInt32(selfPlayer:getExp_s64())
expRate = currentexp * 100 / needExp
silverInInventory = selfPlayer:getInventory():getMoney_s64()
local s64_allWeight = selfPlayer:getCurrentWeight_s64()
local s64_maxWeight = selfPlayer:getPossessableWeight_s64()
local allWeight = Int64toInt32(s64_allWeight) / 10000
local maxWeight = Int64toInt32(s64_maxWeight) / 10000
sumtotalWeight = allWeight / maxWeight * 100
local regionInfo = getRegionInfoByPosition(selfPlayer:getPosition())
isFreeArea = regionInfo:get():isFreeRevivalArea()
isSafeZone = regionInfo:get():isSafeZone()
playerPosX = selfPlayer:getPositionX() --float
playerPosY = selfPlayer:getPositionY() --float
playerPosZ = selfPlayer:getPositionZ() --float
userNickName = getSelfPlayer():getUserNickname() --string
registListCount = getItemMarketMyItemsCount()
isGhosting = ToClient_getGhostMode()
freeRevivalLevel = FromClient_getFreeRevivalLevel()
function getItemName(slot)
  local whereType = Inventory_GetCurrentInventoryType()
  local itemWrapper = getInventoryItemByType(whereType, slot)
  if nil == itemWrapper then
    return
  end
  local itemName = itemWrapper:getStaticStatus():getName()
  return itemName
end
--function FreeMem()
    --collectgarbage("collect")
--end
--function PrintMessages()
    --Proc_ShowMessage_Ack("<PAColor0xFFB69A80>Lua Scripts<PAOldColor> - <PAColor0xFF0099FF>Loaded<PAOldColor>")
--end
--ToClient_GetCharacterPlayTime
--ToClient_setDoTerrainHide
--ToClient_ToggleGhostMode
--ToClient_IsShowCloak
--ToClient_SelfPlayerIsGM
--HandleClicked_TownNpcIcon_NaviStart(11) --set naviation npc
--Servant_Navi(0) --to mount, 0 is horse 1 is boat
--ChatInput_Show() --open chat window
--FGlobal_PushOpenWorldMap() --open world map
--gameExit_MoveChannel(_selectChannel) --change channel
--swapCharacter_Select(self._currentCharacterIndex, true) --swap character
--sendCharacterSelect() --character select
--observerCameraModeStart() --observer camera mode
--deadMessage_RevivalVillage_Confirm() --revive at nearby town
--deadMessage_RevivalExploration_Confirm() --revive at nearby node
--deadMessage_ButtonPushed_Immediate() --immediate revival
--getSelfPlayer():setActionChart("BT_Aro_Skill_Dash_Start_00_1Lv") --DoAction (works if u are cc'ed)




























