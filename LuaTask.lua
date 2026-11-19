---@class LuaTask
---@field Completed LuaEvent Invoked with the function result after successful completion.
---@field Failed LuaEvent Invoked with an error message if the function throws an exception.
---@field Canceled LuaEvent Invoked when Cancel is called.
---@field Status TaskStatus Current task state. Read-only.
local LuaTask = {}

---Schedules the stored function for background execution.
---Connect event handlers before calling Start. Call Start only once.
function LuaTask:Start() end

---Requests cancellation and invokes Canceled.
---Cancellation does not forcibly stop Lua code that is already running.
function LuaTask:Cancel() end
