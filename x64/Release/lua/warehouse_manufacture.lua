local _defaultSlotNo = 255
local _materialSlotNoList = {_defaultSlotNo, _defaultSlotNo, _defaultSlotNo, _defaultSlotNo; [0] = _defaultSlotNo}
local _ACTIONNAME = ""
local _usingInstallationType = (CppEnums.InstallationType).TypeCount

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

function inventoryToWarehouse(slot, count)
	selfPlayerActorKey = getSelfPlayer():getActorKey()
    warehouse_pushFromInventoryItemByNpc(CppEnums.ItemWhereType.eInventory, slot, count, selfPlayerActorKey)
end

function warehouseToInventory(slot, count)
	selfPlayerActorKey = getSelfPlayer():getActorKey()
    warehouse_popToInventoryByNpc(slot, count, selfPlayerActorKey)
end