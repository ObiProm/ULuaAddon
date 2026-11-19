---@class TowerManager : Node
---@field MaxTowersForPlayer integer Default tower limit for players.
---@field OnDefaultTowerLimitChanged LuaEvent Parameters: (integer oldLimit, integer newLimit)
---@field OnPlayerTowerLimitChanged LuaEvent Parameters: (integer playerId, integer oldLimit, integer newLimit)
---@field OnPlayerTowerCountChanged LuaEvent Parameters: (integer playerId, integer towerCount, integer towerLimit)
---@field OnPlayerTowerLimitReached LuaEvent Parameters: (integer playerId, integer towerLimit)
local TowerManager = {}

---@param towerTable Tower Tower object.
---@param guid string Unique identifier for the tower
---@param ownerId integer Player ID who owns this tower
function TowerManager:AddTower(towerTable, guid, ownerId) end

---@param guid string Unique identifier of the tower to remove
---@overload fun(self: TowerManager, tower: Tower)
function TowerManager:FreeTower(guid) end

---@param guid string Unique identifier of the tower to retrieve
---@return table|nil tower table representing the tower, or nil if not found
function TowerManager:GetTowerByGuid(guid) end

---@param ownerId integer Player ID to get towers for
---@return table towers of tower tables owned by this player (empty table if none)
function TowerManager:GetTowersByOwner(ownerId) end

---@param team Team
---@return Tower[] towers Towers belonging to the team.
function TowerManager:GetTowersByTeam(team) end

---@return table towers of all tower tables currently managed
function TowerManager:GetAllTowers() end

---@param method string Name of the method to call on each tower
---@param ... any Arguments to pass to the method
function TowerManager:CallForAllTowers(method, ...) end

function TowerManager:ClearAllTowers() end

---@param playerId integer
---@return integer
---@overload fun(self: TowerManager, player: PlayerLobby): integer
function TowerManager:GetTowerLimit(playerId) end

---@param playerId integer
---@param limit integer
---@overload fun(self: TowerManager, player: PlayerLobby, limit: integer)
function TowerManager:SetTowerLimit(playerId, limit) end

---@param playerId integer
---@overload fun(self: TowerManager, player: PlayerLobby)
function TowerManager:ResetTowerLimit(playerId) end

---@param playerId integer
---@return integer
---@overload fun(self: TowerManager, player: PlayerLobby): integer
function TowerManager:GetTowerCount(playerId) end

---@param playerId integer
---@return boolean
---@overload fun(self: TowerManager, player: PlayerLobby): boolean
function TowerManager:IsTowerLimitReached(playerId) end

---@param playerId integer
---@return boolean
---@overload fun(self: TowerManager, player: PlayerLobby): boolean
function TowerManager:CanPlaceTower(playerId) end
