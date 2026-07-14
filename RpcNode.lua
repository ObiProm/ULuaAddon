---@class RpcNode . Node
---@field SenderId number
local RpcNode = {}

---@param methodName string
---@param ... number|string|table
function RpcNode.RpcReliable(methodName, ...) end

---@param methodName string
---@param ... number|string|table
function RpcNode:RpcReliable(methodName, ...) end

---@param methodName string
---@param ... number|string|table
function RpcNode.RpcUnreliable(methodName, ...) end

---@param methodName string
---@param ... number|string|table
function RpcNode:RpcUnreliable(methodName, ...) end

---@param reciever number
---@param methodName string
---@param ... number|string|table
function RpcNode.RpcIdReliable(reciever, methodName, ...) end

---@param reciever number
---@param methodName string
---@param ... number|string|table
function RpcNode:RpcIdReliable(reciever, methodName, ...) end

---@param reciever number
---@param methodName string
---@param ... number|string|table
function RpcNode.RpcIdUnreliable(reciever, methodName, ...) end

---@param reciever number
---@param methodName string
---@param ... number|string|table
function RpcNode:RpcIdUnreliable(reciever, methodName, ...) end

---@param room Room
---@param methodName string
---@param ... number|string|table
function RpcNode.RpcRoomReliable(room, methodName, ...) end

---@param room Room
---@param methodName string
---@param ... number|string|table
function RpcNode:RpcRoomReliable(room, methodName, ...) end

---@param room Room
---@param methodName string 
---@param ... number|string|table
function RpcNode.RpcRoomUnreliable(room, methodName, ...) end

---@param room Room
---@param methodName string 
---@param ... number|string|table
function RpcNode:RpcRoomUnreliable(room, methodName, ...) end

---Bind lua table (Node) to call methods throught RPC calls
---@param table table
function RpcNode.BindLuaTable(table) end

---Bind lua table (Node) to call methods throught RPC calls
---@param table table
function RpcNode:BindLuaTable(table) end

---Gets binded lua table
---@return table
function RpcNode.GetLuaTable() end

---Gets binded lua table
---@return table
function RpcNode:GetLuaTable() end
