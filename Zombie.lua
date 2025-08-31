---@class Zombie : PathFollow3D
---@field OnPathEnded LuaEvent
local Zombie = {}

---Spawns and renders zombie. Recomended to use at client side.
---@param type string
---@param health number
---@param speed number
---@param modelPath string
function Zombie:Initialize(type, health, speed, modelPath) end

---Spawns zombie, but not renders it. Recomended for performance, like for server side.
---@param type string
---@param health number
---@param speed number
function Zombie:InitializeAsPlaceholder(type, health, speed) end

function Zombie:SpawnOnPath(path3D) end