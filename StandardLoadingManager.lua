---@class StandardLoadingManager : LoadingManager
---@field PlayerSpawned LuaEvent
local StandardLoadingManager = {}

function StandardLoadingManager:ServerLoaded() end

function StandardLoadingManager:PreClientGameDataNotify() end

function StandardLoadingManager:PostClientGameDataNotify() end
