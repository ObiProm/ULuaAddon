---@class PhysicsBody3D : CollisionObject3D
local PhysicsBody3D = {}

---Moves the body along the given motion vector and returns remaining motion.
---@param motion Vector3
---@param margin? number
---@return Vector3
function PhysicsBody3D:MoveAndCollide(motion, margin) end

---Tests if moving along the given motion would collide.
---@param motion Vector3
---@param margin? number
---@return table|nil
function PhysicsBody3D:TestMove(motion, margin) end
