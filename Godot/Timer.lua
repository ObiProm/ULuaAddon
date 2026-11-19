---@class Timer : Node
---@field WaitTime number
---@field OneShot boolean
---@field Autostart boolean
---@field TimeLeft number
---@field Timeout LuaEvent
local Timer = {}

---@param time? number
function Timer:Start(time) end

function Timer:Stop() end