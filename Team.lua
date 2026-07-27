---@class Team
---@field TeamID string @ Unique string identifier (GUID) of the team.
---@field Name string @ The name of the team. Default: "Team".
---@field Color Color @ The visual color associated with the team. Default: Color(0, 0, 0) (Black).
---@field MaxPlayers integer @ Maximum number of players allowed. 0 means unlimited. Default: 0.
---@field Players table<number> @ Set of PeerIDs (numbers) of the players currently in this team.
---@field PlayersCount integer @ Read-only: Current number of players in the team.
---@field AvalibleToAddPlayer boolean @ Read-only: true if the team can accept more players (PlayersCount + 1 <= MaxPlayers or MaxPlayers == 0).
---@field IsAlive boolean @ Read-only: true if CurrentHealth > 0.
---@field CurrentHealth integer @ Current health of the team.
---@field MaxHealth integer @ Maximum health of the team. Default: 100.
local Team = {}

---Transfers a player to this team. Automatically removes the player from their previous team (if any) and updates their CurrentTeam reference.
---@param player PlayerLobby The player to transfer to this team.
function Team:TransferPlayerThisTeam(player) end

---Removes a player from this team and clears their CurrentTeam reference.
---@param player PlayerLobby The player to remove from the team.
function Team:RemovePlayer(player) end
