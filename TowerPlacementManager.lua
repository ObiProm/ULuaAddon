---@class TowerPlacementManager : Node
---@field EnableDefaultPlacementSyncronizer boolean If true, accepted towers are synchronized to room players.
---@field EnableDefaultPlacementChecker boolean Enables the default collision, currency, and tower-limit checks.
---@field ClientPrePlacementHook LuaEvent Client hook. Parameters: (string towerId, Vector3 position, Vector3 rotation, Tower preview). Any false result rejects placement.
---@field ServerPrePlacementHook LuaEvent Server hook. Parameters: (integer senderId, string towerId, Vector3 position, Vector3 rotation). Any false result rejects placement before payment.
---@field EconomyManager EconomyManager
---@field TowerManager TowerManager
---@field OnPlacementConfirmed LuaEvent Parameters: (string towerId, Vector3 position)
---@field OnPlacementStarted LuaEvent Parameters: (string towerId)
---@field OnPlacementEnded LuaEvent Parameters: (string towerId)
---@field OnPlacementModeExited LuaEvent Parameters: (string towerId)
---@field OnTowerPlaced LuaEvent Parameters: (Tower towerObj, string towerId, Vector3 position)
---@field OnPlacementDenied LuaEvent Parameters: (integer code). 0 = insufficient currency, 1 = invalid collision placement, 2 = tower limit reached.
local TowerPlacementManager = {}

---Starts placement mode and creates a local tower preview.
---@param towerId string Tower config ID.
function TowerPlacementManager:StartPlacement(towerId) end

---Binds to button activation of placement.
---@param button Button Button containing a child Label named CostLabel.
---@param index integer Zero-based local inventory index.
function TowerPlacementManager:RegisterInventoryButton(button, index) end

---Validates the preview and sends a placement request to the server.
function TowerPlacementManager:ConfirmPlacement() end

---Cancels placement and removes the local preview.
function TowerPlacementManager:CancelPlacement() end

---Rotates the active preview around the Y axis.
---@param angle number Angle in degrees.
function TowerPlacementManager:RotatePreview(angle) end

---@return boolean
function TowerPlacementManager:IsPlacing() end

---@return Tower|nil
function TowerPlacementManager:GetPreview() end

---@return string towerId Empty when placement mode is inactive.
function TowerPlacementManager:GetPlacingTowerId() end

---@return Vector3
function TowerPlacementManager:GetPlacementPosition() end
