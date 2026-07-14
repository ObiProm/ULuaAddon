---@class CanvasLayer : Node
---@field Layer integer Layer number for rendering order.
---@field FollowViewportEnabled boolean If true, follows the viewport transform.
---@field FollowViewportScale number Scale for following the viewport.
---@field Transform Transform2D Custom transform for the canvas layer.
---@field Offset Vector2 Offset of the canvas layer.
---@field Rotation number Rotation in radians.
---@field Scale Vector2 Scale of the canvas layer.
local CanvasLayer = {}

---Returns the canvas RID.
---@return integer
function CanvasLayer:GetCanvas() end
