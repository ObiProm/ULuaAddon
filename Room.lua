---@class Room
---@field RoomId string @ Unique identifier for the room.
---@field RoomName string @ Display name of the room.
---@field MaxPlayers integer @ Maximum number of players allowed.
---@field Settings RoomSettings @ Game settings (map, mode, etc.).
---@field Info RoomInfo @ Basic metadata about the room.
---@field PlayersCount integer @ Read-only: current number of connected players.
---@field Players table<number, PlayerLobby> @ Map of PeerID → PlayerLobby instances.
---@field Teams table<string, Team> @ Map of team name → Team instance.
---@field Password string @ Room password; empty string means no password.
---@field IsVisible boolean @ Whether the room appears in the public room list. Automatically updates based on player count and game state.
---@field GameStarted boolean @ True if the game has started and players can no longer join.
---@field Admin PlayerLobby @ The player who owns/created the room. Automatically updates if the admin leaves.
---@field BecomeEmpty LuaEvent @ Invoked when the last player leaves the room, making the player count zero.
local Room = {}

---Adds a player to the room, automatically assigns them to the smallest available team, and updates their CurrentRoom reference. If the room reaches MaxPlayers, it becomes hidden from the public list.
---@param player PlayerLobby The player to join.
function Room:JoinPlayer(player) end

---Adds a player to the room's player list without automatically assigning them to a team.
---@param player PlayerLobby The player to add.
function Room:AddPlayer(player) end

---Removes a player from the room, clears their team assignment, and updates their CurrentRoom to nil. If the removed player was the Admin, the admin role is passed to the next available player. If the room is no longer full and the game hasn't started, it becomes visible again.
---@param playerId number The network ID (PeerID) of the player to remove.
function Room:RemovePlayer(playerId) end

---Adds a new team to the room. Any players currently assigned to a team with the same name will be updated to reference this new team instance.
---@param team Team The team instance to add.
function Room:AddTeam(team) end

---Removes a team from the room. Automatically redistributes the team's players to other available teams based on free space.
---@param teamName string The name of the team to remove.
---@return boolean true if the team was successfully removed and players redistributed, false if there is not enough space in other teams.
function Room:RemoveTeam(teamName) end

---Changes the name of an existing team and updates the room's team dictionary.
---@param oldName string The current name of the team.
---@param newName string The new name for the team.
function Room:RenameTeam(oldName, newName) end

---Moves a specific player to a different team within the room.
---@param playerId number The network ID (PeerID) of the player.
---@param teamName string The name of the target team.
function Room:ChangePlayerTeam(playerId, teamName) end

---Retrieves an array-like table of all players currently in the specified team.
---@param teamName string The name of the team.
---@return table An array of PlayerLobby instances.
function Room:GetTeamPlayers(teamName) end

---Finds the team with the fewest players that can accept new members and assigns the player to it. If no teams are available, creates a new fallback team (e.g., "Team0").
---@param player PlayerLobby The player to assign.
function Room:AddPlayerToSmallestTeam(player) end

---Retrieves a list of all players currently in the room.
---@return table An array-like table of PlayerLobby instances.
function Room:GetPlayerList() end
