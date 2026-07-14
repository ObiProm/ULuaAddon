---@class TowerPlacementManager : Node
---@field EnableDefaultPlacementSyncronizer boolean
---@field EnableDefaultPlacementChecker boolean
---@field ProcessPlacementFunction function
---@field ClientPreProcessPlacementFunction function
---@field EconomyManager EconomyManager
---@field OnPlacementConfirmed LuaEvent Parameters: (string towerId, Vector3 position)
---@field OnPlacementStarted LuaEvent Parameters: (string towerId)
---@field OnPlacementEnded LuaEvent Parameters: (string towerId)
---@field OnPlacementModeExited LuaEvent Parameters: (string towerId)
---@field OnTowerPlaced LuaEvent Parameters: (Tower towerObj, string towerId, Vector3 position)
local TowerPlacementManager = {}

---Binds to button activation of placement.
---@param button BaseButton Button to bind.
---@param index number What index of inventory get (starts from 0).
function TowerPlacementManager.RegisterInventoryButton(button, index) end