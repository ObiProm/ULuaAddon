---@class CanvasItem : Node
---@field Visible boolean Whether the node is visible.
---@field Modulate Color Modulates the color of the node.
---@field SelfModulate Color Modulates the color of the node without affecting children.
---@field ZIndex integer Z-order of the node. Higher values are drawn on top.
---@field ZAsRelative boolean If true, ZIndex is relative to parent's ZIndex.
---@field YSortEnabled boolean If true, children are sorted by Y position.
local CanvasItem = {}

--- Sets the visibility of the node.
---@param visible boolean
function CanvasItem:SetVisible(visible) end

--- Returns true if the node is visible.
---@return boolean
function CanvasItem:IsVisible() end

--- Shows the node (sets Visible to true).
function CanvasItem:Show() end

--- Hides the node (sets Visible to false).
function CanvasItem:Hide() end

--- Queues the node for redraw in the next frame.
function CanvasItem:QueueRedraw() end

--- Returns the global transform of the canvas item.
---@return Transform2D
function CanvasItem:GetGlobalTransform() end

--- Returns the local transform of the canvas item.
---@return Transform2D
function CanvasItem:GetTransform() end

--- Returns the canvas item's position in global coordinates.
---@return Vector2
function CanvasItem:GetGlobalPosition() end

--- Sets the canvas item's position in global coordinates.
---@param position Vector2
function CanvasItem:SetGlobalPosition(position) end

--- Returns the canvas item's position in local coordinates.
---@return Vector2
function CanvasItem:GetPosition() end

--- Returns the canvas item's mouse position.
---@return Vector2
function CanvasItem:GetLocalMousePosition() end

--- Returns the canvas item's mouse position in global coordinates.
---@return Vector2
function CanvasItem:GetGlobalMousePosition() end
