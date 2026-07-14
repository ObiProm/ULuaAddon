---@class CollisionShape3D : Node3D
---@field Shape Shape3D|nil The shape resource.
---@field Disabled boolean If true, the shape is disabled.
local CollisionShape3D = {}

---Makes the shape a copy of the given shape.
---@param shape Shape3D
function CollisionShape3D:MakeConvexFromSiblings() end
