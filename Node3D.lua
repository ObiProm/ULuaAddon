---@class Node3D : Node
---@field Position Vector3 Position in local space.
---@field GlobalPosition Vector3 Position in global space.
---@field Rotation Vector3 Euler rotation in radians.
---@field RotationDegrees Vector3 Euler rotation in degrees.
---@field Scale Vector3 Scale of the node.
---@field Basis Basis Basis matrix of the node's transform.
---@field Transform Transform3D Local transform.
---@field GlobalTransform Transform3D Global transform.
---@field Visible boolean Whether the node is visible.
---@field TopLevel boolean If true, ignores parent transforms.
local Node3D = {}

--- Returns the global transform.
---@return Transform3D
function Node3D:GetGlobalTransform() end
---@return Transform3D
function Node3D.GetGlobalTransform() end

--- Sets the global transform.
---@param transform Transform3D
function Node3D:SetGlobalTransform(transform) end
---@param transform Transform3D
function Node3D.SetGlobalTransform(transform) end

--- Returns the global position.
---@return Vector3
function Node3D:GetGlobalPosition() end
---@return Vector3
function Node3D.GetGlobalPosition() end

--- Sets the global position.
---@param position Vector3
function Node3D:SetGlobalPosition(position) end
---@param position Vector3
function Node3D.SetGlobalPosition(position) end

--- Returns the global rotation in radians.
---@return Vector3
function Node3D:GetGlobalRotation() end
---@return Vector3
function Node3D.GetGlobalRotation() end

--- Translates the node by the given offset in local space.
---@param offset Vector3
function Node3D:Translate(offset) end
---@param offset Vector3
function Node3D.Translate(offset) end

--- Rotates the node around the given axis.
---@param axis Vector3
---@param angle number
function Node3D:Rotate(axis, angle) end
---@param axis Vector3
---@param angle number
function Node3D.Rotate(axis, angle) end

--- Rotates the node around the X axis.
---@param angle number
function Node3D:RotateX(angle) end
---@param angle number
function Node3D.RotateX(angle) end

--- Rotates the node around the Y axis.
---@param angle number
function Node3D:RotateY(angle) end
---@param angle number
function Node3D.RotateY(angle) end

--- Rotates the node around the Z axis.
---@param angle number
function Node3D:RotateZ(angle) end
---@param angle number
function Node3D.RotateZ(angle) end

--- Scales the node by the given amount.
---@param scale Vector3
function Node3D:ScaleObject(scale) end
---@param scale Vector3
function Node3D.ScaleObject(scale) end

--- Looks at the target position.
---@param target Vector3
---@param up? Vector3
function Node3D:LookAt(target, up) end
---@param target Vector3
---@param up? Vector3
function Node3D.LookAt(target, up) end

--- Returns the forward direction (-Z).
---@return Vector3
function Node3D:GetForward() end
---@return Vector3
function Node3D.GetForward() end

--- Shows the node.
function Node3D:Show() end
function Node3D.Show() end

--- Hides the node.
function Node3D:Hide() end
function Node3D.Hide() end

--- Returns true if the node is visible.
---@return boolean
function Node3D:IsVisible() end
---@return boolean
function Node3D.IsVisible() end

--- Sets visibility.
---@param visible boolean
function Node3D:SetVisible(visible) end
---@param visible boolean
function Node3D.SetVisible(visible) end

--- Converts a local point to global space.
---@param local_point Vector3
---@return Vector3
function Node3D:ToGlobal(local_point) end
---@param local_point Vector3
---@return Vector3
function Node3D.ToGlobal(local_point) end

--- Converts a global point to local space.
---@param global_point Vector3
---@return Vector3
function Node3D:ToLocal(global_point) end
---@param global_point Vector3
---@return Vector3
function Node3D.ToLocal(global_point) end