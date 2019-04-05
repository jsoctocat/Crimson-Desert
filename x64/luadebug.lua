local testPanel
local input
local output

local dMsgLog = Array.new()  
local LogLength = 20

local function Init()
  
testPanel = UI.createPanel("TestPanel", 8193)	
testPanel:SetShow(true, false)
testPanel:SetDragEnable(true)
testPanel:SetIgnore(false)
testPanel:SetSize( 400,  500 )
testPanel:SetPosX(30)
testPanel:SetPosY(250)	
testPanel:ActiveMouseEventEffect( true )
testPanel:ChangeTextureInfoName( "New_UI_Common_forLua/window/inventory/inven_main.dds" )
testPanel:getBaseTexture():setUV(setTextureUV_Func(testPanel, 7, 6, 405, 542))
testPanel:setRenderTexture(testPanel:getBaseTexture())	
testPanel:SetAlpha(0.8)
testPanel:SetDragAll( true )

local lFrame = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, testPanel, "Frame_lDmg")		
lFrame:SetSize(100, 42)	
lFrame:SetPosX(0)
lFrame:SetPosY(2)	
lFrame:ChangeTextureInfoName("New_UI_Common_forLua/window_titlebar.dds")	
lFrame:getBaseTexture():setUV(setTextureUV_Func(lFrame, 3, 3, 50, 45))
lFrame:setRenderTexture(lFrame:getBaseTexture())
	
local rFrame = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, testPanel, "Frame_rDmg")		
rFrame:SetSize(100, 42)	
rFrame:SetPosX(300)   
rFrame:SetPosY(2)   	
rFrame:ChangeTextureInfoName("New_UI_Common_forLua/window_titlebar.dds")	
rFrame:getBaseTexture():setUV(setTextureUV_Func(rFrame, 344, 3, 396, 45))
rFrame:setRenderTexture(rFrame:getBaseTexture())
					
local mFrame = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, testPanel, "Frame_mDmg")		
mFrame:SetSize(200,  42)	
mFrame:SetPosX(100)  
mFrame:SetPosY(2)   	
mFrame:SetText("<PAColor0xFFB69A80>Lua Debug Console<PAOldColor>")
mFrame:ChangeTextureInfoName("New_UI_Common_forLua/window_titlebar.dds")	
mFrame:getBaseTexture():setUV(setTextureUV_Func(mFrame, 30, 3, 50, 45))
mFrame:setRenderTexture(mFrame:getBaseTexture())

input = UI.createControl( CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_EDIT, testPanel, "input")
input:SetShow(true)
input:SetSize( 395,  30 )	
input:ActiveMouseEventEffect( true )
input:SetPosX(  4 )
input:SetPosY( 50 )		
input:ChangeTextureInfoName( "New_UI_Common_forLua/window/chatting/chatting_win_00.dds" )
input:getBaseTexture():setUV(setTextureUV_Func(input, 0, 0, 348, 224))
input:setRenderTexture(input:getBaseTexture())	
input:SetAlpha(1)	
input:RegistReturnKeyEvent("LuaDebugEnter()")
input:addInputEvent("Mouse_LUp", "HandleClicked_ChatInputEdit()")

output = UI.createControl(CppEnums.PA_UI_CONTROL_TYPE.PA_UI_CONTROL_STATICTEXT, testPanel, "output")
output:SetPosY(80)
output:SetPosX(5)
output:SetSize(400, 400)
output:SetTextVerticalTop()
output:SetTextHorizonLeft()	
end

function UnloadTestPanel()
  UI.deletePanel("TestPanel")
end

function outputMessage(msg)
	if LogLength < dMsgLog:length() then
		dMsgLog:pop_front()
	end
	dMsgLog:push_back(msg)
	output:SetText(dMsgLog:toString())		
end

function LuaDebugEnter()
local f = assert(loadstring(input:GetEditText()))
local r = f()

	if(r == nil) then
	r = 0
	end

outputMessage("(in: " .. input:GetEditText() ..") ret: " .. tostring(r))
input:SetEditText("", true)
ClearFocusEdit()
end

Init()