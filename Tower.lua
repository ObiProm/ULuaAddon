---Virtual functions:<br>
---`OnPreviewPlaced()`<br>
---`OnUpgradeMenuOpened(UpgradeMenuUI upgradeMenuUI)`<br>
---`OnUpgradeMenuClosed(UpgradeMenuUI upgradeMenuUI)`<br>
---`PopulateUpgradeMenuButtons(UpgradeMenuUI upgradeMenu, Control additionalButtonsContainer, Control bottomIconContainer)`<br>
---@class Tower : Node3D
---@field OwnerPlayer PlayerLobby
---@field CurrentRoom Room
---@field OwnerName string
---@field Health integer
---@field MaxHealth integer
---@field IsSellable boolean
---@field SellPrice integer
---@field IsSelectedByUpgradeMenu boolean
local Tower = {}

---@return boolean
function Tower:CanPlace() end

---@param table table
function Tower:BindLuaTable(table) end

---@param name string
---@param range number
---@param color? Color
function Tower:SpawnRangeIndicator(name, range, color) end

---@param name string
function Tower:RemoveRangeIndicator(name) end

--- Virtual function, calls when preview placed
function Tower:OnPreviewPlaced() end

--- Virtual function, calls when tower placed
function Tower:OnTowerPlaced() end

---Virtual function, calls when upgrade menu opened
---@param upgradeMenuUI UpgradeMenuUI
function Tower:OnUpgradeMenuOpened(upgradeMenuUI) end

---Virtual function, calls when upgrade menu closed
---@param upgradeMenuUI UpgradeMenuUI
function Tower:OnUpgradeMenuClosed(upgradeMenuUI) end

---Virtual function, calls before upgrade on SERVER, also can cancel it by returning false/nil/void
---@param upgradeMenuUI UpgradeMenuUI
function Tower:PreProcessUpgrade(upgradeMenuUI) end

---Calls on CLIENTs when tower upgraded
---@param upgradeMenuUI UpgradeMenuUI
function Tower:TowerUpgradePrecessed(upgradeMenuUI) end

---@deprecated
---Virtual function, used to spawn buttons in upgrade menu, recomended to use `OnUpgradeMenuOpened` instead of this
---@param upgradeMenuUI UpgradeMenuUI
---@param additionalButtonsContainer Control
---@param bottomIconContainer Control
function Tower:PopulateUpgradeMenuButtons(upgradeMenuUI, additionalButtonsContainer, bottomIconContainer) end