---@class RpcNode : Node
---@field SenderId integer
local RpcNode = {}

---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcReliable(methodName, ...) end

---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcUnreliable(methodName, ...) end

---@param receiver integer
---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcIdReliable(receiver, methodName, ...) end

---@param receiver integer
---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcIdUnreliable(receiver, methodName, ...) end

---@param room Room
---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcRoomReliable(room, methodName, ...) end

---@param room Room
---@param methodName string
---@param ... number|string|boolean|Vector2|Vector3|Color|table
function RpcNode:RpcRoomUnreliable(room, methodName, ...) end

---Bind lua table (Node) to call methods throught RPC calls
---@param table table
function RpcNode:BindLuaTable(table) end

---Returns whether a Lua table is bound.
---@return boolean
function RpcNode:HasLuaTable() end

---Gets binded lua table
---@return table
function RpcNode:GetLuaTable() end
