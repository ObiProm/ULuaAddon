---@class TowerManager : Node
TowerManager = {}

---@param towerPlacementManager TowerPlacementManager
function TowerManager:Initialize(towerPlacementManager) end

---@param towerTable table Lua table representing the tower object
---@param guid string Unique identifier for the tower
---@param ownerId integer Player ID who owns this tower
function TowerManager:AddTower(towerTable, guid, ownerId) end

---@param guid string Unique identifier of the tower to remove
function TowerManager:RemoveTower(guid) end

---@param guid string Unique identifier of the tower to retrieve
---@return table|nil tower table representing the tower, or nil if not found
function TowerManager:GetTowerByGuid(guid) end

---@param ownerId integer Player ID to get towers for
---@return table towers of tower tables owned by this player (empty table if none)
function TowerManager:GetTowersByOwner(ownerId) end

---@return table towers of all tower tables currently managed
function TowerManager:GetAllTowers() end

---@param method string Name of the method to call on each tower
---@param ... any Arguments to pass to the method
function TowerManager:CallForAllTowers(method, ...) end

function TowerManager:ClearAllTowers() end