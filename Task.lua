---@class Task
Task = {}

---Creates an inactive LuaTask. Connect its events and then call LuaTask:Start().
---@param func function Function to execute in the background.
---@param ... any Arguments passed to func.
---@return LuaTask
function Task.Create(func, ...) end
