---@class Node2D : CanvasItem
---@field Position Vector2
---@field Rotation number
---@field Scale Vector2
---@field GlobalPosition Vector2
---@field GlobalRotation number
---@field GlobalScale Vector2
local Node2D = {}

---@param offset Vector2
function Node2D:Translate(offset) end

---@param radians number
function Node2D:Rotate(radians) end

---@param localPoint Vector2
---@return Vector2
function Node2D:ToGlobal(localPoint) end

---@param globalPoint Vector2
---@return Vector2
function Node2D:ToLocal(globalPoint) end
