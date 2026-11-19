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

---@param r number
---@param g number
---@param b number
---@return Color
function Color(r, g, b) end

---Checks is running application is server
---@return boolean
function IsServer() end

---Checks if the current instance is running as a singleplayer
---@return boolean
function IsSingleplayer() end

---Checks is running application is client in current room (Server is also client if he joined room)
---@param room Room
---@return boolean
function IsLocalForRoom(room) end

---@return integer
function GetUniqueId() end

---Returns local `PlayerLobby`
---@return PlayerLobby
function LocalPlayer() end

---@param path string
---@return any
function LoadResource(path) end

---@param time number
---@param func function
function CreateTimer(time, func) end

---@param scale number
function SetTimeSpeed(scale) end

---@param feature string
---@return boolean
function HasFeature(feature) end
