---@class NavigationAgent3D : Node
---@field PathDesiredDistance number Distance to target to consider path reached.
---@field TargetDesiredDistance number Distance to target to consider navigation finished.
---@field NavigationLayers integer Navigation layers this agent uses.
---@field AvoidanceEnabled boolean If true, obstacle avoidance is active.
---@field AvoidanceLayers integer Avoidance layers for this agent.
---@field MaxSpeed number Maximum speed for avoidance calculations.
---@field Radius number Agent radius for avoidance calculations.
---@field Height number Agent height for avoidance calculations.
---@field MaxNeighbors integer Maximum neighbors to consider for avoidance.
---@field NeighborDistance number Maximum distance to consider neighbors.
---@field TimeHorizonAgents number Time horizon for agent avoidance.
---@field TimeHorizonObstacles number Time horizon for obstacle avoidance.
---@field DebugEnabled boolean If true, shows debug visualization.
---@field DebugPathCustomColor Color Custom color for debug path.
local NavigationAgent3D = {}

---Sets the target position to navigate to.
---@param target Vector3
function NavigationAgent3D:SetTargetPosition(target) end

---Returns the next position on the navigation path.
---@return Vector3
function NavigationAgent3D:GetNextPathPosition() end

---Returns the current navigation path as array of Vector3.
---@return table
function NavigationAgent3D:GetCurrentPath() end

---Returns true if the navigation is finished.
---@return boolean
function NavigationAgent3D:IsNavigationFinished() end

---Returns true if the target is reachable.
---@return boolean
function NavigationAgent3D:IsTargetReachable() end

---Returns the distance to the target.
---@return number
function NavigationAgent3D:DistanceToTarget() end

---Returns the final target position.
---@return Vector3
function NavigationAgent3D:GetFinalTargetPosition() end

---Sets the velocity for avoidance calculations.
---@param velocity Vector3
function NavigationAgent3D:SetVelocity(velocity) end
