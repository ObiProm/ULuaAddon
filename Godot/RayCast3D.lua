---@class RayCast3D : Node3D
---@field TargetPosition Vector3 Target position relative to the raycast origin.
---@field Enabled boolean If true, the raycast is active.
---@field CollisionMask integer Collision mask for ray detection.
---@field CollideWithAreas boolean If true, detects Area3D nodes.
---@field CollideWithBodies boolean If true, detects PhysicsBody3D nodes.
---@field Exclude table Array of RIDs or ObjectIDs to exclude from detection.
---@field HitFromInside boolean If true, detects collisions from inside shapes.
---@field HitBackFaces boolean If true, detects back faces.
local RayCast3D = {}

---Returns true if the ray is colliding with something.
---@return boolean
function RayCast3D:IsColliding() end

---Returns the colliding object.
---@return CollisionObject3D|nil
function RayCast3D:GetCollider() end

---Returns the collision point in global coordinates.
---@return Vector3
function RayCast3D:GetCollisionPoint() end

---Returns the collision normal.
---@return Vector3
function RayCast3D:GetCollisionNormal() end

---Forces an update of the raycast.
function RayCast3D:ForceRaycastUpdate() end
