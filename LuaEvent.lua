---@class LuaEvent
local LuaEvent = {}

---@param callback function
---@param owner? table
---@overload fun(self: LuaEvent, callbackName: string, owner: table)
function LuaEvent:Connect(callback, owner) end

---@param callback function
function LuaEvent:Disconnect(callback) end

---@param ... any
function LuaEvent:Invoke(...) end

---Calls handlers in connection order and returns the first result that is not nil.
---Only available for custom events created with game.CreateEvent().
---@param ... any
---@return any
function LuaEvent:Run(...) end

---Calls every handler and returns all non-nil results as an array.
---Only available for custom events created with game.CreateEvent().
---@param ... any
---@return any[]
function LuaEvent:RunAll(...) end

---Passes values through every handler in connection order.
---A nil result leaves the current values unchanged. One result replaces the values with one value; multiple results replace the complete value list.
---Only available for custom events created with game.CreateEvent().
---@param ... any
---@return any ... Processed values.
function LuaEvent:Process(...) end
