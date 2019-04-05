local UI_ANI_ADV = CppEnums.PAUI_ANIM_ADVANCE_TYPE
local UI_color = Defines.Color
local IM = CppEnums.EProcessorInputMode
local UI_TM = CppEnums.TextMode
Panel_LifeRanking:SetShow(false, false)
Panel_LifeRanking:RegisterShowEventFunc(true, "LifeRankingShowAni()")
Panel_LifeRanking:RegisterShowEventFunc(false, "LifeRankingHideAni()")
function LifeRankingShowAni()
  UIAni.fadeInSCR_Down(Panel_LifeRanking)
  local aniInfo1 = Panel_LifeRanking:addScaleAnimation(0, 0.08, UI_ANI_ADV.PAUI_ANIM_ADVANCE_COS_HALF_PI)
  aniInfo1:SetStartScale(0.5)
  aniInfo1:SetEndScale(1.2)
  aniInfo1.AxisX = Panel_LifeRanking:GetSizeX() / 2
  aniInfo1.AxisY = Panel_LifeRanking:GetSizeY() / 2
  aniInfo1.ScaleType = 2
  aniInfo1.IsChangeChild = true
  local aniInfo2 = Panel_LifeRanking:addScaleAnimation(0.08, 0.15, UI_ANI_ADV.PAUI_ANIM_ADVANCE_COS_HALF_PI)
  aniInfo2:SetStartScale(1.2)
  aniInfo2:SetEndScale(1)
  aniInfo2.AxisX = Panel_LifeRanking:GetSizeX() / 2
  aniInfo2.AxisY = Panel_LifeRanking:GetSizeY() / 2
  aniInfo2.ScaleType = 2
  aniInfo2.IsChangeChild = true
end
function LifeRankingHideAni()
  local aniInfo1 = Panel_LifeRanking:addColorAnimation(0, 0.1, UI_ANI_ADV.PAUI_ANIM_ADVANCE_SIN_HALF_PI)
  aniInfo1:SetStartColor(UI_color.C_FFFFFFFF)
  aniInfo1:SetEndColor(UI_color.C_00FFFFFF)
  aniInfo1:SetStartIntensity(3)
  aniInfo1:SetEndIntensity(1)
  aniInfo1.IsChangeChild = true
  aniInfo1:SetHideAtEnd(true)
  aniInfo1:SetDisableWhileAni(true)
end
PaGlobal_LifeRanking = {
  _ui = {
    _titleBg = UI.getChildControl(Panel_LifeRanking, "Static_TitleBG"),
    _scroll = UI.getChildControl(Panel_LifeRanking, "Scroll_RankingList"),
    _listBg = UI.getChildControl(Panel_LifeRanking, "Static_BG"),
    _myRanking = UI.getChildControl(Panel_LifeRanking, "StaticText_MyRanking"),
    _inMyRankRate = UI.getChildControl(Panel_LifeRanking, "Slider_InMyRank"),
    firstRanker = UI.getChildControl(Panel_LifeRanking, "StaticText_Rank_First"),
    firstRankerName = UI.getChildControl(Panel_LifeRanking, "StaticText_FirstCharacterName"),
    firstRankerGuild = UI.getChildControl(Panel_LifeRanking, "StaticText_FirstGuildName"),
    secondRanker = UI.getChildControl(Panel_LifeRanking, "StaticText_Rank_Second"),
    secondRankerName = UI.getChildControl(Panel_LifeRanking, "StaticText_SecondCharacterName"),
    secondRankerGuild = UI.getChildControl(Panel_LifeRanking, "StaticText_SecondGuildName"),
    thirdRanker = UI.getChildControl(Panel_LifeRanking, "StaticText_Rank_Third"),
    thirdRankerName = UI.getChildControl(Panel_LifeRanking, "StaticText_ThirdCharacterName"),
    thirdRankerGuild = UI.getChildControl(Panel_LifeRanking, "StaticText_ThirdGuildName"),
    myAllRankBG = UI.getChildControl(Panel_LifeRanking, "Static_MyRankingBG"),
    txt_comment = UI.getChildControl(Panel_LifeRanking, "StaticText_Comment"),
    _topGrade = {
      UI.getChildControl(Panel_LifeRanking, "StaticText_Grade_First"),
      UI.getChildControl(Panel_LifeRanking, "StaticText_Grade_Second"),
      UI.getChildControl(Panel_LifeRanking, "StaticText_Grade_Third")
    },
    _tab = {
      [0] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Gathering"),
      [1] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Fishing"),
      [2] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Hunting"),
      [3] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Cook"),
      [4] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Alchemy"),
      [5] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Manufacture"),
      [6] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Mating"),
      [7] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Trade"),
      [8] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Growth"),
      [9] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Sail"),
      [10] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Wealth"),
      [11] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Combat"),
      [12] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_LocalWar"),
      [13] = UI.getChildControl(Panel_LifeRanking, "RadioButton_Tab_Rally")
    },
    _tabName = {
      [0] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_GATHER"),
      [1] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_FISH"),
      [2] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_HUNT"),
      [3] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_COOK"),
      [4] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_ALCHEMY"),
      [5] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_MANUFACTURE"),
      [6] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_HORSE"),
      [7] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_TRADE"),
      [8] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_GROWTH"),
      [9] = PAGetString(Defines.StringSheet_GAME, "LUA_PARTYCOMBAT_TAB_SAIL"),
      [10] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_WEALTH"),
      [11] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_COMBAT"),
      [12] = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_TAB_LOCALWAR"),
      [13] = PAGetString(Defines.StringSheet_GAME, "LUA_PARTYCOMBAT_NAK_PVPMATCH_NAME")
    },
    _tooltip = {
      _bg = UI.getChildControl(Panel_LifeRanking, "Static_TooltipBG"),
      _name = UI.getChildControl(Panel_LifeRanking, "Tooltip_Name"),
      _desc = UI.getChildControl(Panel_LifeRanking, "Tooltip_Description")
    }
  },
  _react = false,
  _createTabCount = 14,
  _createListCount = 30,
  _listCount = 0,
  _startIndex = 0,
  _selectedTabIdx = 0,
  _listPool = {},
  _rankerData = {},
  _posConfig = {
    _tabStartPosX = 14,
    _tabPosXGap = 100,
    _listStartPosY = 290,
    _listPosYGap = 16
  },
  _serverChange = true,
  _listUpdate = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
    [7] = false,
    [8] = false,
    [9] = false,
    [10] = false,
    [11] = false,
    [12] = false,
    [13] = false
  }
}
PaGlobal_LifeRanking._ui._txtTitle = UI.getChildControl(PaGlobal_LifeRanking._ui._titleBg, "StaticText_Title")
PaGlobal_LifeRanking._ui._btnClose = UI.getChildControl(PaGlobal_LifeRanking._ui._titleBg, "Button_Win_Close")
PaGlobal_LifeRanking._ui._btnHelp = UI.getChildControl(PaGlobal_LifeRanking._ui._titleBg, "Button_Question")
PaGlobal_LifeRanking._ui._tabMyRank = {
  [0] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Gathering"),
  [1] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Fishing"),
  [2] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Hunting"),
  [3] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Cook"),
  [4] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Alchemy"),
  [5] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Manufacture"),
  [6] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Mating"),
  [7] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Trade"),
  [8] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Growth"),
  [9] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Sail"),
  [10] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Wealth"),
  [11] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Combat"),
  [12] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_LocalWar"),
  [13] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_Rally")
}
PaGlobal_LifeRanking._ui._tabMyTitle = {
  [0] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_GatheringTitle"),
  [1] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_FishingTitle"),
  [2] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_HuntingTitle"),
  [3] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_CookTitle"),
  [4] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_AlchemyTitle"),
  [5] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_ManufactureTitle"),
  [6] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_MatingTitle"),
  [7] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_TradeTitle"),
  [8] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_GrowthTitle"),
  [9] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_SailTitle"),
  [10] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_WealthTitle"),
  [11] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_CombatTitle"),
  [12] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_LocalWarTitle"),
  [13] = UI.getChildControl(PaGlobal_LifeRanking._ui.myAllRankBG, "StaticText_MyALLRanking_Text_RallyTitle")
}
local rankingTabId = {
  tab_Gathering = 0,
  tab_Fishing = 1,
  tab_Hunting = 2,
  tab_Cook = 3,
  tab_Alchemy = 4,
  tab_Manufacture = 5,
  tab_Mating = 6,
  tab_Trade = 7,
  tab_Growth = 8,
  tab_Sail = 9,
  tab_Wealth = 10,
  tab_Combat = 11,
  tab_LocalWar = 12,
  tab_Rally = 13
}
function PaGlobal_LifeRanking:Initialize()
  for listIdx = 0, self._createListCount - 1 do
    local rankList = {}
    rankList.rank = UI.createAndCopyBasePropertyControl(Panel_LifeRanking, "StaticText_PlayerRank", Panel_LifeRanking, "LifeRanking_Rank_" .. listIdx)
    rankList.rank:SetPosX(172)
    rankList.rank:SetPosY(self._posConfig._listStartPosY + self._posConfig._listPosYGap * listIdx)
    rankList.name = UI.createAndCopyBasePropertyControl(Panel_LifeRanking, "StaticText_PlayerName", Panel_LifeRanking, "LifeRanking_Name_" .. listIdx)
    rankList.name:SetPosX(221)
    rankList.name:SetPosY(self._posConfig._listStartPosY + self._posConfig._listPosYGap * listIdx)
    rankList.guild = UI.createAndCopyBasePropertyControl(Panel_LifeRanking, "StaticText_AnotherGuildName", Panel_LifeRanking, "LifeRanking_Guild_" .. listIdx)
    rankList.guild:SetPosX(501)
    rankList.guild:SetPosY(self._posConfig._listStartPosY + self._posConfig._listPosYGap * listIdx)
    rankList.grade = UI.createAndCopyBasePropertyControl(Panel_LifeRanking, "StaticText_MyLifeGrade", Panel_LifeRanking, "LifeRanking_GradeList_" .. listIdx)
    rankList.grade:SetPosX(764)
    rankList.grade:SetPosY(self._posConfig._listStartPosY + self._posConfig._listPosYGap * listIdx)
    self._listPool[listIdx] = rankList
  end
  if Panel_LifeRanking:GetShow() then
    Panel_LifeRanking:SetShow(false, false)
  end
  for idx = 0, self._createTabCount - 1 do
    self._ui._tab[idx]:SetCheck(false)
    self._ui._tab[idx]:SetText(tostring(self._ui._tabName[idx]))
  end
  local setShowCount = 0
  for index = 0, self._createTabCount - 1 do
    if FGlobal_LifeRanking_CheckEnAble(index) then
      self._ui._tab[index]:SetShow(true)
      self._ui._tab[index]:SetSpanSize(14, 33 * setShowCount + 205)
      self._ui._tabMyTitle[index]:SetTextMode(UI_TM.eTextMode_LimitText)
      setShowCount = setShowCount + 1
    else
      self._ui._tab[index]:SetShow(false)
    end
  end
  self._ui._tab[0]:SetCheck(true)
  local screenSizeX = getScreenSizeX()
  local screenSizeY = getScreenSizeY()
  Panel_LifeRanking:SetPosX((screenSizeX - Panel_LifeRanking:GetSizeX()) / 2)
  Panel_LifeRanking:SetPosY((screenSizeY - Panel_LifeRanking:GetSizeY()) / 2)
  Panel_LifeRanking:SetChildIndex(self._ui._tooltip._bg, 9999)
  Panel_LifeRanking:SetChildIndex(self._ui._tooltip._name, 9999)
  Panel_LifeRanking:SetChildIndex(self._ui._tooltip._desc, 9999)
end
function PaGlobal_LifeRanking:Update()
  for listIdx = 0, self._createListCount - 1 do
    local list = self._listPool[listIdx]
    list.rank:SetShow(false)
    list.name:SetShow(false)
    list.guild:SetShow(false)
    list.grade:SetShow(false)
  end
  self._ui.firstRanker:SetShow(false)
  self._ui.secondRanker:SetShow(false)
  self._ui.thirdRanker:SetShow(false)
  self._ui.firstRankerName:SetShow(false)
  self._ui.secondRankerName:SetShow(false)
  self._ui.thirdRankerName:SetShow(false)
  self._ui.firstRankerGuild:SetShow(false)
  self._ui.secondRankerGuild:SetShow(false)
  self._ui.thirdRankerGuild:SetShow(false)
  self._ui._topGrade[1]:SetShow(false)
  self._ui._topGrade[2]:SetShow(false)
  self._ui._topGrade[3]:SetShow(false)
  if self._selectedTabIdx <= 9 then
    self._listCount = ToClient_GetLifeRankerCount()
  elseif 10 == self._selectedTabIdx then
    self._listCount = ToClient_GetContentsRankCount(1)
  elseif 11 == self._selectedTabIdx then
    self._listCount = ToClient_GetContentsRankCount(0)
  elseif 12 == self._selectedTabIdx then
    self._listCount = ToClient_GetContentsRankCount(2)
  elseif 13 == self._selectedTabIdx then
    self._listCount = math.max(ToClient_GetMatchRankerCount(1), 1)
  end
  local count = 0
  local lifeRanker, rankerMoney
  self._rankerData = {}
  for listIdx = self._startIndex, self._listCount - 1 do
    if 10 == self._selectedTabIdx then
      lifeRanker  = ToClient_GetMoneyRankAt(listIdx)
    else
      lifeRanker = PaGlobal_LifeRanking:GetLifeRankerAt(listIdx)
    end
    if nil == lifeRanker then
      break
    end
    local list = self._listPool[count]
    local checkLv = false
    if 0 == listIdx then
      checkLv = PaGlobal_LifeRanking:FillLifeRankList(lifeRanker, self._ui.firstRanker, self._ui.firstRankerName, self._ui.firstRankerGuild, self._ui._topGrade[1], listIdx, UI_color.C_FFEF5378)
    elseif 1 == listIdx then
      checkLv = PaGlobal_LifeRanking:FillLifeRankList(lifeRanker, self._ui.secondRanker, self._ui.secondRankerName, self._ui.secondRankerGuild, self._ui._topGrade[2], listIdx, UI_color.C_FF88DF00)
    elseif 2 == listIdx then
      checkLv = PaGlobal_LifeRanking:FillLifeRankList(lifeRanker, self._ui.thirdRanker, self._ui.thirdRankerName, self._ui.thirdRankerGuild, self._ui._topGrade[3], listIdx, UI_color.C_FF6DC6FF)
    else
      checkLv = PaGlobal_LifeRanking:FillLifeRankList(lifeRanker, list.rank, list.name, list.guild, list.grade, listIdx, UI_color.C_FFC4BEBE)
    end
    if false == checkLv or count >= self._createListCount then
      break
    end
    count = count + 1
  end
  local myLifeRanker = PaGlobal_LifeRanking:GetMyLifeRank(self._selectedTabIdx)
  local serverUserCnt = PaGlobal_LifeRanking:GetUserCount(self._selectedTabIdx)
  PaGlobal_LifeRanking._ui._txtTitle:SetText("Ranking - Channel's UserCount(" .. serverUserCnt .. ")")						  									  
  local myLifeRankerRate = tonumber(myLifeRanker * 100 / serverUserCnt)
  local myLifeRankGroup
  local lifeType = self._ui._tabName[self._selectedTabIdx]
  local lifeRankerLv = PaGlobal_LifeRanking:CheckMyLifeLv(self._selectedTabIdx)
  if myLifeRanker <= 30 and lifeRankerLv > 0 then
    if 12 == self._selectedTabIdx then
      myLifeRankGroup = PAGetStringParam3(Defines.StringSheet_GAME, "LUA_LIFERANKING_MYRANKING2_LOCALWAR", "lifeType", lifeType, "myLifeRanker", myLifeRanker, "point", lifeRankerLv)
    else
      myLifeRankGroup = PAGetStringParam2(Defines.StringSheet_GAME, "LUA_LIFERANKING_MYRANKING2", "lifeType", lifeType, "myLifeRanker", myLifeRanker)
    end
    self._ui._inMyRankRate:SetShow(false)
  elseif 0 == lifeRankerLv then
    myLifeRankGroup = PAGetStringParam1(Defines.StringSheet_GAME, "LUA_RALLYRANKING_MYRANK_NOPOINT", "rallyType", lifeType)
    self._ui._inMyRankRate:SetShow(false)
  else
    if myLifeRankerRate >= 0 and myLifeRankerRate <= 20 then
      lifeGrade = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_A")
    elseif myLifeRankerRate > 20 and myLifeRankerRate <= 40 then
      lifeGrade = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_B")
    elseif myLifeRankerRate > 40 and myLifeRankerRate <= 60 then
      lifeGrade = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_C")
    elseif myLifeRankerRate > 60 and myLifeRankerRate <= 80 then
      lifeGrade = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_D")
    elseif myLifeRankerRate > 80 and myLifeRankerRate <= 100 then
      lifeGrade = PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_E")
    end
    myLifeRankGroup = PAGetStringParam2(Defines.StringSheet_GAME, "LUA_LIFERANKING_GRADETYPE", "lifeType", lifeType, "lifeGrade", tostring(lifeGrade))
    self._ui._inMyRankRate:SetShow(true)
    self._ui._inMyRankRate:SetControlPos(myLifeRankerRate)
  end
  self._ui._myRanking:SetText(myLifeRankGroup)
  if self._ui._myRanking:GetTextSizeX() > self._ui._myRanking:GetSizeX() then
    self._ui.txt_comment:SetShow(false)
  else
    self._ui.txt_comment:SetShow(true)
  end
  if true == self._serverChange then
    PaGlobal_LifeRanking:MyLifeRankingText_Refresh()
    self._serverChange = false
  end
end
function PaGlobal_LifeRanking:LevelFlotFunc(lifeRankerWrp)
  if nil == lifeRankerWrp then
    return
  end
  local _const = Defines.s64_const
  local rate = 0
  local rateDisplay = 0
  local s64_needExp = lifeRankerWrp:getNeedExp_s64()
  local s64_exp = lifeRankerWrp:getExperience_s64()
  if s64_needExp > _const.s64_10000 then
    rate = Int64toInt32(s64_exp / (s64_needExp / _const.s64_100))
  elseif _const.s64_0 ~= s64_needExp then
    rate = Int64toInt32(s64_exp * _const.s64_100 / s64_needExp)
  end
  if rate < 10 then
    rateDisplay = ".0" .. rate
  else
    rateDisplay = "." .. rate
  end
  return rateDisplay
end
function PaGlobal_LifeRanking:SelectTab(idx)
  self._startIndex = 0
  self._selectedTabIdx = idx
  if idx <= 9 then
    ToClient_SetLifeRankType(idx)
  end
  if self._serverChange == true then
    for idx = 0, self._createTabCount - 1 do
      self._listUpdate[idx] = false
    end
    ToClient_RequestMyLifeRankRefresh()
  elseif false == self._listUpdate[idx] then
    PaGlobal_LifeRanking:RequestLifeRank(idx)
    self._listUpdate[idx] = true
  else
    PaGlobal_LifeRanking:Update()
  end
end
function PaGlobal_LifeRanking:RankerWhisper(rankIdx)
  local lifeRanker
  lifeRanker = PaGlobal_LifeRanking:GetLifeRankerAt(rankIdx)
  local lifeRankerCharName = lifeRanker:getCharacterName()
  FGlobal_ChattingInput_ShowWhisper(lifeRankerCharName)
end
function PaGlobal_LifeRanking:MyLifeRankingText_Refresh()
  for tab = 0, self._createTabCount - 1 do
    if 13 == tab then
      local lifeRankerLvTmp = PaGlobal_LifeRanking:CheckMyLifeLv(tab)
      if lifeRankerLvTmp == 0 then
        checkData = false
        self._ui._tabMyRank[tab]:SetText("-")
        return
      end
    end
    local myLifeRanking = PaGlobal_LifeRanking:GetMyLifeRank(tab)
    self._ui._tabMyTitle[tab]:SetText(tostring(self._ui._tabName[tab]))
    if self._ui._tabMyTitle[tab]:IsLimitText() then
      self._ui._tabMyTitle[tab]:addInputEvent("Mouse_On", "PaGlobal_LifeRanking:LifeTitleTooltip(true, " .. tab .. ")")
      self._ui._tabMyTitle[tab]:addInputEvent("Mouse_Out", "PaGlobal_LifeRanking:LifeTitleTooltip(false)")
    else
      self._ui._tabMyTitle[tab]:addInputEvent("Mouse_On", "")
      self._ui._tabMyTitle[tab]:addInputEvent("Mouse_Out", "")
    end
    if myLifeRanking <= 30 then
      self._ui._tabMyRank[tab]:SetText(PAGetStringParam1(Defines.StringSheet_GAME, "LUA_LIFERANKING_RANK", "listIdx", myLifeRanking))
      if myLifeRanking > 3 then
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FFC4BEBE)
      elseif 1 == myLifeRanking then
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FFEF5378)
      elseif 2 == myLifeRanking then
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FF88DF00)
      elseif 3 == myLifeRanking then
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FF6DC6FF)
      else
        self._ui._tabMyRank[tab]:SetText("-")
      end
    else
      local serverUserCnt = PaGlobal_LifeRanking:GetUserCount(tab)
      local myLifeRankerRate = tonumber(myLifeRanking * 100 / serverUserCnt)
      if myLifeRankerRate >= 0 and myLifeRankerRate <= 20 then
        self._ui._tabMyRank[tab]:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_A"))
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FFC2313D)
      elseif myLifeRankerRate > 20 and myLifeRankerRate <= 40 then
        self._ui._tabMyRank[tab]:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_B"))
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FFD16400)
      elseif myLifeRankerRate > 40 and myLifeRankerRate <= 60 then
        self._ui._tabMyRank[tab]:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_C"))
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FF62B15B)
      elseif myLifeRankerRate > 60 and myLifeRankerRate <= 80 then
        self._ui._tabMyRank[tab]:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_D"))
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FF468ADA)
      elseif myLifeRankerRate > 80 and myLifeRankerRate <= 100 then
        self._ui._tabMyRank[tab]:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_LIFERANKING_E"))
        self._ui._tabMyRank[tab]:SetFontColor(UI_color.C_FFDBB038)
      end
    end
  end
end
function PaGlobal_LifeRanking:RequestLifeRank(tab)
  if tab <= 9 then
    ToClient_RequestLifeRanker(tab)
  elseif 10 == tab then
    ToClient_RequestContentsRank(1)
  elseif 11 == tab then
    ToClient_RequestContentsRank(0)
  elseif 12 == tab then
    ToClient_RequestContentsRank(2)
  elseif 13 == tab then
    ToClient_RequestMatchRanker(0)
  end
end
function PaGlobal_LifeRanking:GetMyLifeRank(tab)
  local myRank = 0
  if tab <= 9 then
    myRank = ToClient_GetLifeMyRank_Param(tab)
  elseif 10 == tab then
    myRank = ToClient_GetContentsMyRank(1)
  elseif 11 == tab then
    myRank = ToClient_GetContentsMyRank(0)
  elseif 12 == tab then
    myRank = ToClient_GetContentsMyRank(2)
  elseif 13 == tab then
    myRank = ToClient_GetMyMatchRank(0)
  end
  return myRank
end
function PaGlobal_LifeRanking:GetUserCount(tab)
  local userCount = 0
  if tab <= 9 then
    userCount = ToClient_GetLifeRankerUserCount()
  elseif 10 == tab then
    userCount = ToClient_GetContentsRankUserCount(1)
  elseif 11 == tab then
    userCount = ToClient_GetContentsRankUserCount(0)
  elseif 12 == tab then
    userCount = ToClient_GetContentsRankUserCount(2)
  elseif 13 == tab then
    userCount = ToClient_GetMatchRankerUserCount(0)
  end
  return userCount
end
function PaGlobal_LifeRanking:GetLifeRankerAt(listIdx)
  local lifeRanker
  if self._selectedTabIdx <= 9 then
    lifeRanker = ToClient_GetLifeRankerAt(listIdx)
  elseif 10 == self._selectedTabIdx then
    lifeRanker = ToClient_GetMoneyRankAt(listIdx)
  elseif 11 == self._selectedTabIdx then
    lifeRanker = ToClient_GetBattleRankAt(listIdx)
  elseif 12 == self._selectedTabIdx then
    lifeRanker = ToClient_GetLocalWarRankAt(listIdx)
  elseif 13 == self._selectedTabIdx then
    lifeRanker = ToClient_GetMatchRankerAt(0, listIdx)
  end
  return lifeRanker
end
function PaGlobal_LifeRanking:GetLifeRankerLv(lifeRanker, tab)
  local lifeRankerLv = 0
  if 13 == tab then
    lifeRankerLv = lifeRanker:getMatchPoint()
  elseif 12 == tab then
    lifeRankerLv = lifeRanker:getAccumulatedKillCount()
  else
    lifeRankerLv = lifeRanker:getLevel()
  end
  return lifeRankerLv
end
function PaGlobal_LifeRanking:CheckMyLifeLv(tab)
  local lifeRankerLv = 0
  if 12 == tab then
    lifeRankerLv = ToClient_GetMyAccumulatedKillCount()
  elseif 13 == tab then
    lifeRankerLv = ToClient_GetMyMatchPoint(0)
  else
    lifeRankerLv = 1
  end
  return lifeRankerLv
end
function PaGlobal_LifeRanking:FillLifeRankList(lifeRanker, rankText, nameText, guildText, gradeText, listIdx, color)
  local lifeRankerLv = PaGlobal_LifeRanking:GetLifeRankerLv(lifeRanker, self._selectedTabIdx)
  local lifeRankerName = lifeRanker:getUserName()
  local lifeRankerCharName = lifeRanker:getCharacterName()
  local lifeRankerGuild = lifeRanker:getGuildName()
  local lifeRankerIntroDesc = lifeRanker:getUserIntroduction()
  if 0 == lifeRankerLv then
    return false
  end
  self._rankerData[listIdx] = {}
  self._rankerData[listIdx]._name = lifeRankerName
  self._rankerData[listIdx]._desc = lifeRankerIntroDesc
  rankText:SetShow(true)
  nameText:SetShow(true)
  guildText:SetShow(true)
  gradeText:SetShow(true)
  rankText:SetFontColor(color)
  nameText:SetFontColor(color)
  guildText:SetFontColor(color)
  guildText:SetFontColor(color)
  rankText:SetText(PAGetStringParam1(Defines.StringSheet_GAME, "LUA_LIFERANKING_RANK", "listIdx", listIdx + 1))
  nameText:SetTextMode(CppEnums.TextMode.eTextMode_LimitText)
  nameText:SetText(lifeRankerName .. "(" .. lifeRankerCharName .. ")")
  guildText:SetText(lifeRankerGuild)
  if self._selectedTabIdx <= 9 then
    if _ContentsGroup_isUsedNewCharacterInfo == false then
      gradeText:SetText(FGlobal_CraftLevel_Replace(lifeRankerLv, self._selectedTabIdx))
    else
      gradeText:SetText(FGlobal_UI_CharacterInfo_Basic_Global_CraftLevelReplace(lifeRankerLv, self._selectedTabIdx))
    end
  elseif 10 == self._selectedTabIdx then
    gradeText:SetText(tostring(makeDotMoney(lifeRanker:getMoneyCount_s64())))
  elseif 11 == self._selectedTabIdx then
    local levelFlot = PaGlobal_LifeRanking:LevelFlotFunc(lifeRanker)
    gradeText:SetText(PAGetString(Defines.StringSheet_GAME, "LUA_COMMON_LV") .. " " .. tostring(lifeRankerLv) .. tostring(levelFlot))
  elseif 12 == self._selectedTabIdx then
    gradeText:SetText(lifeRankerLv)
  elseif 13 == self._selectedTabIdx then
    gradeText:SetText(lifeRankerLv)
  end
  nameText:addInputEvent("Mouse_LUp", "PaGlobal_LifeRanking:RankerWhisper( " .. listIdx .. " )")
  nameText:addInputEvent("Mouse_On", "PaGlobal_LifeRanking:Tooltip( " .. listIdx .. ")")
  nameText:addInputEvent("Mouse_Out", "PaGlobal_LifeRanking:Tooltip()")
  return true
end
function PaGlobal_LifeRanking:ShowAndUpdate()
  PaGlobal_LifeRanking:Update()
  if false == Panel_LifeRanking:GetShow() then
    Panel_LifeRanking:SetShow(true, true)
  end
end
function FromClient_Repos()
  local screenSizeX = getScreenSizeX()
  local screenSizeY = getScreenSizeY()
  Panel_LifeRanking:SetPosX((screenSizeX - Panel_LifeRanking:GetSizeX()) / 2)
  Panel_LifeRanking:SetPosY((screenSizeY - Panel_LifeRanking:GetSizeY()) / 2)
end
function FromClient_ShowLifeRank()
  PaGlobal_LifeRanking:ShowAndUpdate()
end
function FromClient_ShowContentsRank(contentsRankType)
  if nil == contentsRankType then
    return
  end
  PaGlobal_LifeRanking:ShowAndUpdate()
end
function FromClient_ResponseMatchRank_()
  PaGlobal_LifeRanking:ShowAndUpdate()
end
function FromClient_LifeRanking_Refresh()
  local self = PaGlobal_LifeRanking
  self._serverChange = true
end
function FromClient_UpdateLifeRanking()
  local self = PaGlobal_LifeRanking
  if false == self._listUpdate[self._selectedTabIdx] then
    PaGlobal_LifeRanking:RequestLifeRank(self._selectedTabIdx)
    self._listUpdate[self._selectedTabIdx] = true
  else
    PaGlobal_LifeRanking:Update()
  end
end
function FGlobal_LifeRanking_Refresh()
  local self = PaGlobal_LifeRanking
  if self._serverChange == true then
    ToClient_RequestMyLifeRankRefresh()
  end
  return self._serverChange
end
function FGlobal_LifeRanking_Open()
  audioPostEvent_SystemUi(1, 30)
  local self = PaGlobal_LifeRanking
  if true == self._serverChange then
    for idx = 0, self._createTabCount - 1 do
      self._listUpdate[idx] = false
    end
    ToClient_RequestMyLifeRankRefresh()
  else
    PaGlobal_LifeRanking:ShowAndUpdate()
  end
  self._ui._tabMyRank[13]:SetShow(false)
  self._ui._tabMyTitle[13]:SetShow(false)
  self._ui._tab[13]:SetShow(false)
end
function FGlobal_LifeRanking_Close()
  audioPostEvent_SystemUi(1, 31)
  Panel_LifeRanking:SetShow(false, false)
end
function FGlobal_LifeRanking_CheckEnAble(rankType)
  local self = rankingTabId
  local returnValue = true
  if self.tab_Hunting == rankType then
    if ToClient_IsContentsGroupOpen("28") then
      returnValue = true
    else
      returnValue = false
    end
  elseif self.tab_Rally == rankType then
    if ToClient_IsContentsGroupOpen("38") then
      returnValue = true
    else
      returnValue = false
    end
  elseif self.tab_LocalWar == rankType then
    if ToClient_IsContentsGroupOpen("43") then
      returnValue = true
    else
      returnValue = false
    end
  elseif self.tab_Sail == rankType then
    if ToClient_IsContentsGroupOpen("83") then
      returnValue = true
    else
      returnValue = false
    end
  end
  return returnValue
end
function FGlobal_LifeRanking_Show(index)
  local self = PaGlobal_LifeRanking
  local rankType
  if 0 == index then
    rankType = 12
  elseif 1 == index then
    rankType = 11
  end
  if nil ~= rankType then
    PaGlobal_LifeRanking:SelectTab(rankType)
    self._tab[rankType]:SetCheck(true)
    for idx = 0, self._createTabCount - 1 do
      self._tab[idx]:SetCheck(false)
    end
  end
end
function PaGlobal_LifeRanking:Simpletooltips(isShow, contolNo)
  local control, name
  if isShow == true then
    contol = self._ui._tab[contolNo]
    name = self._ui._tabName[contolNo]
    registTooltipControl(contol, Panel_Tooltip_SimpleText)
    TooltipSimple_Show(contol, name, nil)
  else
    TooltipSimple_Hide()
  end
end
function PaGlobal_LifeRanking:TooltipHide()
  self._ui._tooltip._bg:SetShow(false)
  self._ui._tooltip._name:SetShow(false)
  self._ui._tooltip._desc:SetShow(false)
end
function PaGlobal_LifeRanking:TooltipShow(uiControl, name, desc, index)
  PaGlobal_LifeRanking:TooltipHide()
  self._ui._tooltip._bg:SetShow(true)
  self._ui._tooltip._name:SetShow(true)
  self._ui._tooltip._desc:SetShow(true)
  self._ui._tooltip._name:SetText(name .. PAGetString(Defines.StringSheet_GAME, "LUA_GUILD_RECRUITMENT_PLAYERINTRO"))
  local nameLength = math.max(150, self._ui._tooltip._name:GetTextSizeX())
  self._ui._tooltip._desc:SetSize(nameLength, self._ui._tooltip._desc:GetTextSizeY())
  self._ui._tooltip._desc:SetText(desc)
  self._ui._tooltip._bg:SetSize(nameLength + 10, self._ui._tooltip._name:GetSizeY() + self._ui._tooltip._desc:GetTextSizeY() + 15)
  local posX = 0
  local posY = 0
  if index >= 3 then
    posX = uiControl.name:GetPosX()
    posY = uiControl.name:GetPosY()
  else
    posX = uiControl:GetPosX()
    posY = uiControl:GetPosY()
  end
  self._ui._tooltip._bg:SetPosX(posX + 20)
  self._ui._tooltip._bg:SetPosY(posY + 25)
  self._ui._tooltip._name:SetPosX(self._ui._tooltip._bg:GetPosX() + 5)
  self._ui._tooltip._name:SetPosY(self._ui._tooltip._bg:GetPosY() + 5)
  self._ui._tooltip._desc:SetPosX(self._ui._tooltip._name:GetPosX())
  self._ui._tooltip._desc:SetPosY(self._ui._tooltip._name:GetPosY() + self._ui._tooltip._name:GetSizeY())
end
function PaGlobal_LifeRanking:Tooltip(index)
  local self = PaGlobal_LifeRanking
  if nil == index then
    PaGlobal_LifeRanking:TooltipHide()
    return
  end
  local name = self._rankerData[index]._name
  local desc = self._rankerData[index]._desc
  local uiControl
  if 0 == index then
    uiControl = self._ui.firstRankerName
  elseif 1 == index then
    uiControl = self._ui.secondRankerName
  elseif 2 == index then
    uiControl = self._ui.thirdRankerName
  else
    uiControl = self._listPool[index]
  end
  if nil == desc or "" == desc then
    desc = PAGetString(Defines.StringSheet_GAME, "LUA_GUILD_RECRUITMENT_PLAYERINTRO_NODATA")
  end
  PaGlobal_LifeRanking:TooltipShow(uiControl, name, desc, index)
end
function PaGlobal_LifeRanking:LifeTitleTooltip(isShow, index)
  if not isShow then
    TooltipSimple_Hide()
    return
  end
  if nil == index then
    TooltipSimple_Hide()
    return
  end
  local name, desc, control
  name = self._ui._tabName[index]
  control = self._ui._tabMyTitle[index]
  TooltipSimple_Show(control, name, desc)
end
function LifeRanking_registEventHandler()
  PaGlobal_LifeRanking._ui._btnHelp:addInputEvent("Mouse_LUp", "Panel_WebHelper_ShowToggle( \"LifeRanking\" )")
  PaGlobal_LifeRanking._ui._btnHelp:addInputEvent("Mouse_On", "HelpMessageQuestion_Show( \"LifeRanking\", \"true\")")
  PaGlobal_LifeRanking._ui._btnHelp:addInputEvent("Mouse_Out", "HelpMessageQuestion_Show( \"LifeRanking\", \"false\")")
  PaGlobal_LifeRanking._ui._btnClose:addInputEvent("Mouse_LUp", "FGlobal_LifeRanking_Close()")
  for idx = 0, PaGlobal_LifeRanking._createTabCount - 1 do
    PaGlobal_LifeRanking._ui._tab[idx]:addInputEvent("Mouse_LUp", "PaGlobal_LifeRanking:SelectTab( " .. idx .. " )")
  end
end
function LifeRanking_registMessageHandler()
  registerEvent("onScreenResize", "FromClient_Repos")
  registerEvent("FromClient_ShowLifeRank", "FromClient_ShowLifeRank")
  registerEvent("FromClient_ShowContentsRank", "FromClient_ShowContentsRank")
  registerEvent("FromClient_ResponseMatchRank", "FromClient_ResponseMatchRank_")
  registerEvent("FromClient_LifeRanking_Refresh", "FromClient_LifeRanking_Refresh")
  registerEvent("FromClient_UpdateLifeRanking", "FromClient_UpdateLifeRanking")
end
PaGlobal_LifeRanking._ui._tooltip._desc:SetTextMode(UI_TM.eTextMode_AutoWrap)
PaGlobal_LifeRanking._ui._tooltip._bg:SetIgnore(true)
PaGlobal_LifeRanking:Initialize()
LifeRanking_registEventHandler()
LifeRanking_registMessageHandler()
