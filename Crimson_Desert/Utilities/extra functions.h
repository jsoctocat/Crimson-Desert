#pragma once

//constexpr uintptr_t BD_nopSpeedCheck									= 0x14082F2A4; //(example nop 4 bytes means 4 of 0x90)

//patch speedcheck
/*
static byte patchSpeedCheck[5] = { 0x90, 0x90, 0x90, 0x90, 0x90 };
auto check_patchbynop = reinterpret_cast<byte*>(BD_nopSpeedCheck);
*/

//sleep timer---------------------
static auto last = std::chrono::high_resolution_clock::now();
auto now = std::chrono::high_resolution_clock::now();

if (std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count() > 2000)
{
	cLog("%d", std::chrono::duration_cast<std::chrono::milliseconds>(now - last).count());
	last = now;
}
//--------------------------------------------

if (g_b_game_loaded_first_time) //nop speed check
{
	memcpy(check_patchbynop, patchSpeedCheck, sizeof(patchSpeedCheck));
	!g_b_game_loaded_first_time;
}

uint64_t& characterControllerPtr = *((uint64_t*)(actors.m_ui64_address + g_ki32_CharacterController));
uint64_t& currentAnimationPtr = *((uint64_t*)(characterControllerPtr + 0x38));
uint64_t& currentAnimation = *((uint64_t*)(currentAnimationPtr + 0x20));
uint32_t& animationId = *((uint32_t*)(currentAnimation));

uint64_t& stringTable_address = *((uint64_t*)(g_kuip_StringTable_ASCII));
uint64_t& stringTable = *((uint64_t*)(stringTable_address));
uint64_t NameEntryAddy = (stringTable + (0x10 * animationId));
std::string animationName((char*)(*((uint64_t*)(NameEntryAddy))));

//char* animationName = (char*)(*((uint64_t*)(NameEntryAddy)));
//fLog("printing: %d, %s", animationId, animationName);

if (animationName.find("DIE"))

	printing : 80151, FISHING_START
	printing : 80154, FISHING_ING_START
	printing : 80155, FISHING_START_END_Lv0
	printing : 80169, FISHING_WAIT
	printing : 80170, FISHING_HOOK_READY
	printing : 80171, FISHING_HOOK_ING
	printing : 80172, FISHING_HOOK_DELAY
	printing : 80174, FISHING_HOOK_START
	printing : 80177, FISHING_HOOK_GOOD
	printing : 80178, FISHING_HOOK_SUCCESS
	printing : 80179, FISHING_HOOK_ING_HARDER
	printing : 65446, WAIT
	printing : 67217, BATTLE_ATTACK1
	printing : 143842, WAIT_Idx2
	printing : 143844, WAIT_Idx3
	printing : 66791, BATTLE_WAIT
	printing : 67082, CHASER_RUN
	printing : 66895, MOVE_CHASER
	printing : 66844, SEARCH_ENEMY
	printing : 66966, BATTLE_RANGEATTACK1
	printing : 67240, TURN_LEFT
	printing : 67219, BATTLE_ATTACK2
	printing : 68887, BATTLE_ATTACK2_A
	printing : 68888, BATTLE_ATTACK2_B
	printing : 143824, BATTLE_ATTACK2_C
	printing : 70625, BATTLE_ATTACK1_A
	printing : 66844, SEARCH_ENEMY
	printing : 72824, BATTLE_ATTACK15
	printing : 66865, DIE
	printing : 146511, DIE_Idx89
	printing : 146712, DIE_Idx88
	printing : 66791, BATTLE_WAIT





		  /*
		  void appendLineToFile(std::string line)
		  {
			  std::string filepath;

			  TCHAR buffer[MAX_PATH];

			  auto readChars = GetModuleFileNameA(NULL, buffer, MAX_PATH);

			  filepath = std::string(buffer, buffer + readChars) + "/lualog.txt";

			  std::ofstream file;

			  file.open(filepath, std::ios::out | std::ios::app);
			  //if (file.fail())
			  //throw std::ios_base::failure(std::strerror(errno));

			  file.exceptions(file.exceptions() | std::ios::failbit | std::ifstream::badbit);

			  file << line << std::endl;
		  }
		  */

		  cLog("This is the address of lua state: 0x%p", L);
		  cLog("This is the address of luaL_newstate: 0x%p", luaL_newstate);
		  cLog("This is the address of lua_createtable: 0x%p", lua_createtable);
		  cLog("This is the address of luaL_loadstring: 0x%p", luaL_loadstring);
		  cLog("This is the address of luaL_loadfilex: 0x%p", luaL_loadfilex);
		  cLog("This is the address of luaL_loadbufferx: 0x%p", luaL_loadbufferx);
		  cLog("This is the address of lua_pcall: 0x%p\n", lua_pcall);


--currentMaxWp = getSelfPlayer() :getMaxWp()
--currentWP = getSelfPlayer() : getWp()
--userNickName = getSelfPlayer() : getUserNickname()  --string
--freeRevivalLevel = FromClient_getFreeRevivalLevel()


--setTessellation(0)
--setDof(0)
--setPostFilter(0)
--setIntimacyMode(0)
--Warehouse_OpenPanelFromMaid()
--ToClient_JoinPvpBattleGround() --battle arena
--ToClient_JoinLocalWar() --join rbf
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
--useCheckFairy(enRespawnType.respawnType_Immediate) --fairy revive no lose exp
--deadMessage_ButtonPushed_Immediate() --immediate revival
--local pos = float3(selfPlayer:getPositionX(), selfPlayer : getPositionY(), selfPlayer : getPositionZ())
--[[function PaGlobal_AutoQuestManager : usePotion()
local selfPlayer = selfPlayer
local hp = selfPlayer : getHp()
local maxhp = selfPlayer : getMaxHp()
local mp = selfPlayer : getMp()
local maxmp = selfPlayer : getMaxMp()
local usehp = false
local usemp = false
if hp / maxhp < 0.5 then
	usehp = true
	end
	if mp / maxmp < 0.5 then
		usemp = true
		end
		local inventory = selfPlayer:getInventoryByType(CppEnums.ItemWhereType.eInventory)
		if usehp then
			tempItemEnchantKey = ItemEnchantKey(502, 0)
			slotValue = inventory : getSlot(tempItemEnchantKey)
			if 255 == slotValue then
				if false == isMoving then
					local position = float3(quest.progressX, quest.progressY, quest.progressZ)
					ToClient_WorldMapNaviStart(position, NavigationGuideParam(), true, true)
					isMoving = true
					end
					return
					end
					local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, slotValue)
					if remainTime == 0 then
						inventoryUseItem(CppEnums.ItemWhereType.eInventory, slotValue, 0, true)
						end
						end
						if usemp then
							tempItemEnchantKey = ItemEnchantKey(591, 0)
							slotValue = inventory:getSlot(tempItemEnchantKey)
							if 255 == slotValue then
								if false == isMoving then
									local position = float3(quest.progressX, quest.progressY, quest.progressZ)
									ToClient_WorldMapNaviStart(position, NavigationGuideParam(), true, true)
									isMoving = true
									end
									return
									end
									local remainTime = getItemCooltime(CppEnums.ItemWhereType.eInventory, slotValue)
									if remainTime == 0 then
										inventoryUseItem(CppEnums.ItemWhereType.eInventory, slotValue, 0, true)
										end
										end
										end]]--
--ToClient_DeleteNaviGuideByGroup(0)--delete navigation waypoint
--getSelfPlayer():setActionChart("BT_Aro_Skill_Dash_Start_00_1Lv") --DoAction(works if u are cc'ed)
ToClient_setActionChart

void MarketSystem_b()
									{
										static ImGuiLog m_market_log;

										if (BDO::g_b_auto_buy && g_um_market_items.empty())
										{
											LuaExecutor(XorStringA("Proc_ShowMessage_Ack('<PAColor0xFFB69A80>Please Load Market File First<PAOldColor>')"));
											BDO::g_b_auto_buy = false;
										}

										if (BDO::g_b_show_market_log)
										{
											static bool l_b_shown_market_log_first_time;
											m_market_log.Draw("Market Log");

											uint64_t warehouse_money = g_t_WarehouseMoneyFromNPCShop();

											if (warehouse_money != BDO::g_ui64_warehouse_silver_for_market || !l_b_shown_market_log_first_time)
											{
												BDO::g_ui64_warehouse_silver_for_market = warehouse_money;
												m_market_log.AddLog("Warehouse Money: %llu\n", BDO::g_ui64_warehouse_silver_for_market);

												l_b_shown_market_log_first_time = true;
											}
										}

										if (BDO::g_b_auto_buy)
										{
											if (TimerFunction(BDO::g_i32_execution_interval))
											{
												for (auto const& target : g_um_market_items)
												{
													g_t_RequestItemMarketSellInfo(BDO::g_i32_territory_key, target.second, false);

													uint32_t target_slot_count = g_t_GetItemMarketSellInfoInClientCount(BDO::g_i32_territory_key, target.second);

													if (target_slot_count == 0)
														continue;

													for (uint32_t slot_index = 0; slot_index < target_slot_count; slot_index++)
													{
														uint64_t sell_info = g_t_GetItemMarketSellInfoInClientByIndex(BDO::g_i32_territory_key, target.second, slot_index);

														if (sell_info == 0x00)
															continue;

														uint64_t& sell_info_count = *((uint64_t*)(sell_info + 0x18));

														if (sell_info_count > 0)
														{
															bool is_bidding_item = g_t_IsBiddingItem(sell_info);

															uint64_t one_price = g_t_GetOnePrice(sell_info);
															uint64_t total_price = (one_price * sell_info_count);

															if (g_t_WarehouseMoneyFromNPCShop() < total_price)
																continue;

															if (is_bidding_item)
															{
																bool is_bidding_join_time = g_t_IsBiddingJoinTime(sell_info);
																uint64_t item_market_no = g_t_GetItemMarketNo(sell_info);
																bool is_bidding_join_item = g_t_IsBiddingJoinItem(item_market_no);

																if (is_bidding_join_time)
																{
																	if (!is_bidding_join_item)
																	{
																		m_market_log.AddLog("[%s] Bidding on %s [Price: %llu]\n", get_formatted_datetime().c_str(), target.first.c_str(), total_price);

																		g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, target.second, slot_index, sell_info_count, 0);
																	}
																}
																else if (is_bidding_join_item)
																{
																	m_market_log.AddLog("[%s] Confirming bid on %s [Price: %llu]\n", get_formatted_datetime().c_str(), target.first.c_str(), total_price);

																	g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, target.second, slot_index, sell_info_count, 0);
																}
															}
															else
															{
																m_market_log.AddLog("[%s] Buying %s [Price: %llu]\n", get_formatted_datetime().c_str(), target.first.c_str(), total_price);

																g_t_RequestBuyItemForItemMarket(BDO::g_i32_wallet_type * 2, target.second, slot_index, sell_info_count, 0);
															}
														}
													}
												}
												//std::string name = g_um_market_items.;
												//uint32_t itemid = target.second;
												//g_um_market_items.erase(name);
												//g_um_market_items.emplace(name, itemid);
											}

										}
									}