---Virtual functions:<br>
---`OnPreviewPlaced()`<br>
---`OnUpgradeMenuOpened(UpgradeMenuUI upgradeMenuUI)`<br>
---`OnUpgradeMenuClosed(UpgradeMenuUI upgradeMenuUI)`<br>
---`PopulateUpgradeMenuButtons(UpgradeMenuUI upgradeMenu, Control additionalButtonsContainer, Control bottomIconContainer)`<br>
---@class Tower : GameEntity
---@field TowerType string Given id to identify tower type and display it using stats written in config. Used for synchronization, persistence, and lookup. Default: empty string.
---@field OwnerPeerID integer Peer ID of the player who owns the tower. 0 means no owner (e.g., before placement).
---@field IsTowerPlaced boolean Whether the placement lifecycle has completed.
---@field OwnerName string Display name of the tower's owner. Synchronized on placement or ownership change.
---@field CurrentRoom Room The room this tower belongs to. Defines the network sync context.
---@field Team Team The team this tower belongs to. Affects interactions with enemies and allies.
---@field Health integer Current health of the tower. When reaches 0, the tower is destroyed. Default: 100.
---@field MaxHealth integer Maximum health. If set to 0, the tower becomes invincible. Default: 100.
---@field IsSellable boolean Whether the tower can be sold. Default: true.
---@field SellPrice integer Sell price as a percentage of build cost. CAN BE SETTED ONLY AT SERVER.
---@field IsSelectedByUpgradeMenu boolean true if an upgrade menu is currently open for this tower.
---@field CurrentOpenedUpgradeMenu UpgradeMenuUI|nil Reference to the currently active upgrade menu UI instance.
---@field UpgradePathsCount integer Number of upgrade paths initialized for this tower.
---@field EnableDefaultSellPriceCount boolean If true, SellPrice is auto-calculated based on upgrade progress. Default: true. CAN BE SETTED ONLY AT SERVER.
local Tower = {}

---@return boolean
function Tower:CanPlace() end

function Tower:SetupSynchronizer() end

---@param table table
function Tower:BindLuaTable(table) end

---@param name string
---@param range number
---@param color? Color
function Tower:SpawnRangeIndicator(name, range, color) end

---@param name string
function Tower:RemoveRangeIndicator(name) end

---@param pathIndex integer Index of the upgrade path.
---@return integer Current level on the path, or 0 if it has not been upgraded.
function Tower:GetCurrentUpgradeLevel(pathIndex) end

---Will call upgrade request on client to server, don't call it if IsLocalForRoom(room) is false.
---@param pathIndex number Index of upgrade path.
function Tower:ApplyUpgrade(pathIndex) end

---Will block upgrade path to upgrade.
---@param pathIndex number Index of upgrade path.
function Tower:LockPath(pathIndex) end

---Will unblock upgrade path to upgrade.
---@param pathIndex number Index of upgrade path.
function Tower:UnlockPath(pathIndex) end

---Checks is path locked
---@param pathIndex number Index of upgrade path.
---@return boolean Is path locked.
function Tower:IsPathLocked(pathIndex) end

--- Virtual function, calls when preview placed
function Tower:OnPreviewPlaced() end

--- Virtual function, calls when tower placed
function Tower:OnTowerPlaced() end

---Called before opening the upgrade menu. Return false to prevent it from opening.
---@param upgradeMenuUI UpgradeMenuUI
---@return boolean?
function Tower:PreUpgradeMenuOpen(upgradeMenuUI) end

---Virtual function, calls when upgrade menu opened
---@param upgradeMenuUI UpgradeMenuUI
function Tower:OnUpgradeMenuOpened(upgradeMenuUI) end

---Virtual function, calls when upgrade menu closed
---@param upgradeMenuUI UpgradeMenuUI
function Tower:OnUpgradeMenuClosed(upgradeMenuUI) end

---Virtual function, calls before upgrade on SERVER, also can cancel it by returning false/nil/void
---@param upgradeMenuUI UpgradeMenuUI
function Tower:PreProcessUpgrade(upgradeMenuUI) end

---Calls when tower upgraded
---@param upgradeMenuUI UpgradeMenuUI
function Tower:TowerUpgradePrecessed(upgradeMenuUI) end

---@deprecated
---Virtual function, used to spawn buttons in upgrade menu, recomended to use `OnUpgradeMenuOpened` instead of this
---@param upgradeMenuUI UpgradeMenuUI
---@param additionalButtonsContainer Control
---@param bottomIconContainer Control
function Tower:PopulateUpgradeMenuButtons(upgradeMenuUI, additionalButtonsContainer, bottomIconContainer) end
