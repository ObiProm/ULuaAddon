function print(...) end
function printError(...) end
function printWarning(...) end

---@param X number
---@param Y number
---@param Z number
---@return Vector3
function Vector3(X, Y, Z) end

---@param X number
---@param Y number
---@return Vector2
function Vector2(X, Y) end

---@param r integer
---@param g integer
---@param b integer
---@return Color
function Color(r, g, b) end

---Checks is running application is server
---@return boolean
function IsServer() end

---Checks is running application is client in current room (Server is also client if he joined room)
---@param room Room
---@return boolean
function IsLocalForRoom(room) end

---@return number
function GetUniqueId() end

---Returns local `PlayerLobby`
---@return PlayerLobby
function LocalPlayer() end

---@param path string
---@return any
function LoadResource(path) end