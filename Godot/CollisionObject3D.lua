---@class CollisionObject3D : Node3D
---@field CollisionLayer integer Collision layer bitmask.
---@field CollisionMask integer Collision mask bitmask.
---@field CollisionPriority number Priority for collision detection.
---@field DisableMode integer Disable mode (0=remove, 1=make static).
---@field InputRayPickable boolean If true, can be picked by mouse ray.
---@field InputCaptureOnDrag boolean If true, captures input on drag.
local CollisionObject3D = {}

---Returns the collision layer.
---@return integer
function CollisionObject3D:GetCollisionLayer() end

---Returns the collision mask.
---@return integer
function CollisionObject3D:GetCollisionMask() end

---Sets the collision layer.
---@param layer integer
function CollisionObject3D:SetCollisionLayer(layer) end

---Sets the collision mask.
---@param mask integer
function CollisionObject3D:SetCollisionMask(mask) end

---Returns the RID of the collision object.
---@return integer
function CollisionObject3D:GetRid() end
