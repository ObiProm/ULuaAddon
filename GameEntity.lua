---@class GameEntity : Node3D
---@field Health integer
---@field MaxHealth integer
---@field CurrentRoom Room
---@field CurrentTeam Team
---@field OnDamageReceived LuaEvent
---@field OnDeath LuaEvent
local GameEntity = {}

---@param statName string
---@return number
function GameEntity:GetBaseStat(statName) end

---@param statName string
---@param delta number
function GameEntity:ModifyBaseStat(statName, delta) end

---@param effectData table
---@return string|nil
function GameEntity:GiveEffect(effectData) end

---@param guid string
function GameEntity:RemoveEffect(guid) end

---Called before an effect is applied. Return false to reject it.
---@param effectData table
---@return boolean?
function GameEntity:ProcessEffect(effectData) end

---Called after active effects are recalculated.
function GameEntity:OnStatsRecalculated() end
