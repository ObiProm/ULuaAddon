---@class TabManager : VBoxContainer
local TabManager = {}

---Refreshes the displayed health for one team.
---@param team Team|string Team object or TeamID.
function TabManager:UpdateTeamHealth(team) end

---Rebuilds the complete team list from the current client room.
function TabManager:ReloadMenu() end
