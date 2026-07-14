---@class Zombie : PathFollow3D
---@field Health integer Health of zombie, when 0 destroys. Default: 5.
---@field MaxHealth integer Max health of zombie. Default: 5.
---@field Speed number Speed of zombie. Default: 2.
---@field Type string Name, which will be displayed on hover on zombie (if InfoShower was added).
---@field CurrentRoom Room Room which zombie belongs.
---@field OnDamageReceived LuaEvent Calls when zombie gets damage from tower. Parameters: (Tower tower, integer count)
---@field OnPathEnded LuaEvent Calls when zombie finishes their path.
---@field OnDeath LuaEvent Calls when zombie dies.
local Zombie = {}

---Initializes zombie model from path, if isAnimated, it calls "ArmatureAction" in model.
---@param modelPath string Path to model.
---@param isAnimated? boolean Is animated, if true calls "ArmatureAction" in model. Default: true.
function Zombie:InitializeModel(modelPath, isAnimated) end

---Spawn zombie on path, it starts moving.
---@param path3D Path3D Path to spawn zombie on.
function Zombie:SpawnOnPath(path3D) end

---Zombie will receive damage in count damage.
---@param tower Tower Tower, which dealt damage.
---@param damage integer How much damage.
function Zombie:GetDamage(tower, damage) end