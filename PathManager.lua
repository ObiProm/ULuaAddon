---@class PathManager : Node
local PathManager = {}

---Registers a path for a specific team. If a path is already registered for this team, it will not be overwritten.
---@param team Team The team to associate the path with.
---@param path Path3D The Path3D node representing the path.
function PathManager:RegisterPath(team, path) end

---Returns the number of zombies currently on the path assigned to the specified team. Counts only Zombie nodes on the path — not all child nodes.
---@param team Team The team whose path count you want to retrieve.
---@return number The number of zombies on the path, or -1 if no path is registered for the team.
function PathManager:GetZombiesCountOnTeamPath(team) end

---Retrieves the entire mapping of teams to their registered paths.
---@return table A dictionary where keys are TeamID (string) and values are Path3D nodes.
function PathManager:GetPaths() end
