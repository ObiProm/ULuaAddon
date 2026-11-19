---@class MovableTower : StandardTower
---@field Station StationTower
---@field IsMoving boolean
---@field MovementSpeed number
---@field OnPathEnded LuaEvent
local MovableTower = {}

function MovableTower:CompletePath() end

function MovableTower:StopMovement() end

function MovableTower:ResumeMovement() end

---@param animationName string
function MovableTower:PlayAnimation(animationName) end

function MovableTower:StopAnimation() end

---Called after placement and path movement initialization.
function MovableTower:OnMinionReady() end
