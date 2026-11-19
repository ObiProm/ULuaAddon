---@class ConditionManager
ConditionManager = {}

---Creates condition that can be checked by game.IsConditionComplete(name)
---@param name string Condition name
---@param func fun(...): boolean Condition function. Must return boolean
function ConditionManager.CreateCondition(name, func) end

---Checks whether a registered condition is complete.
---@param name string Condition name
---@param ... any Arguments passed to the condition function.
---@return boolean Is condition complete
function ConditionManager.IsConditionComplete(name, ...) end

---Checks a condition on the server and invokes callback with the boolean result.
---@param callback fun(result: boolean)
---@param name string Condition name.
---@param ... any Arguments sent with the request.
function ConditionManager.IsConditionCompleteServer(callback, name, ...) end
