---@class LuaEvent
local LuaEvent = {}

---@param callback function
---@param table? table
function LuaEvent.Connect(callback, table) end

---@param callback function
---@param table? table
function LuaEvent.Disconnect(callback, table) end

---@param ... any
function LuaEvent.Invoke(...) end
