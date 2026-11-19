---@class LoadingManager : Node
---@field CurrentRoom Room
---@field OnAllPlayersLoaded LuaEvent
local LoadingManager = {}

---Sends ready request from CLIENT to SERVER
function LoadingManager:SendReady() end

---[VIRTUAL] Calls on CLIENT when server send game data
---@param data table
function LoadingManager.ClientGameDataNotify(data) end

---[VIRTUAL] Calls when all players loaded
function LoadingManager.ClientGameStart() end

---[VIRTUAL] Idk what is it
---@deprecated
function LoadingManager.ClientLoadedPlayerLeftNotify() end

---Send from SERVER start game request to CLIENTs
function LoadingManager.StartGame() end

---Calls on SERVER when client loaded to the game scene and ready to recieve game data
function LoadingManager.ServerBaseLoaded() end

---Calls on SERVER when client send loading ready request by `SendReady`
---@see LoadingManager.SendReady
function LoadingManager.ServerReadyRequest() end

---Calls on SERVER when game node for room is initizlized and LoadingManager is ready to work
---@param room Room
function LoadingManager:Initialize(room) end

---Sends game data to player with ID
function LoadingManager.SendGameData(id) end
