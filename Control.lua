---@class Control : CanvasItem
---@field Position Vector2 Position of the control relative to its parent.
---@field Size Vector2 Size of the control.
---@field CustomMinimumSize Vector2 Minimum size hint for the control.
---@field GlobalPosition Vector2 Position of the control in global coordinates.
---@field Rotation number Rotation in radians.
---@field Scale Vector2 Scale of the control.
---@field PivotOffset Vector2 Pivot point for rotation and scale.
---@field AnchorLeft number Left anchor (0.0 to 1.0).
---@field AnchorTop number Top anchor (0.0 to 1.0).
---@field AnchorRight number Right anchor (0.0 to 1.0).
---@field AnchorBottom number Bottom anchor (0.0 to 1.0).
---@field OffsetLeft number Left offset in pixels.
---@field OffsetTop number Top offset in pixels.
---@field OffsetRight number Right offset in pixels.
---@field OffsetBottom number Bottom offset in pixels.
---@field GrowHorizontal integer How the control grows horizontally.
---@field GrowVertical integer How the control grows vertically.
---@field SizeFlagsHorizontal integer Horizontal size flags (fill, expand, shrink).
---@field SizeFlagsVertical integer Vertical size flags (fill, expand, shrink).
---@field SizeFlagsStretchRatio number Stretch ratio when SizeFlags expand is set.
---@field FocusMode integer Focus mode of the control (0=none, 1=click, 2=all).
---@field MouseFilter integer Mouse filter mode (0=stop, 1=pass, 2=ignore).
---@field MouseDefaultCursorShape integer Default cursor shape when hovering.
---@field TooltipText string Tooltip text displayed on hover.
local Control = {}

--- Shows the control.
function Control:Show() end
function Control.Show() end

--- Hides the control.
function Control:Hide() end
function Control.Hide() end

--- Sets the anchors to the given preset.
---@param preset integer
---@param keepOffsets? boolean
function Control:SetAnchorsPreset(preset, keepOffsets) end
---@param preset integer
---@param keepOffsets? boolean
function Control.SetAnchorsPreset(preset, keepOffsets) end

--- Sets the anchors and offsets to the given preset.
---@param preset integer
---@param resize_mode? integer
function Control:SetAnchorsAndOffsetsPreset(preset, resize_mode) end
---@param preset integer
---@param resize_mode? integer
function Control.SetAnchorsAndOffsetsPreset(preset, resize_mode) end

--- Returns the combined minimum size from custom minimum size and the control's content.
---@return Vector2
function Control:GetCombinedMinimumSize() end
---@return Vector2
function Control.GetCombinedMinimumSize() end

--- Returns the minimum size needed to display the control.
---@return Vector2
function Control:GetMinimumSize() end
---@return Vector2
function Control.GetMinimumSize() end

--- Forces the control to update its minimum size.
function Control:UpdateMinimumSize() end
function Control.UpdateMinimumSize() end

--- Grabs keyboard focus.
function Control:GrabFocus() end
function Control.GrabFocus() end

--- Releases keyboard focus.
function Control:ReleaseFocus() end
function Control.ReleaseFocus() end

--- Returns true if the control has keyboard focus.
---@return boolean
function Control:HasFocus() end
---@return boolean
function Control.HasFocus() end

--- Returns the global rectangle of the control.
---@return Rect2
function Control:GetGlobalRect() end
---@return Rect2
function Control.GetGlobalRect() end

--- Returns the local rectangle of the control.
---@return Rect2
function Control:GetRect() end
---@return Rect2
function Control.GetRect() end

--- Sets the size and position of the control.
---@param rect Rect2
function Control:SetRect(rect) end
---@param rect Rect2
function Control.SetRect(rect) end

--- Fits the control's size to its minimum size.
function Control:FitChildInRect() end
function Control.FitChildInRect() end

--- Returns the size of the control.
---@return Vector2
function Control:GetSize() end
---@return Vector2
function Control.GetSize() end

--- Sets the size of the control.
---@param size Vector2
function Control:SetSize(size) end
---@param size Vector2
function Control.SetSize(size) end

--- Returns the position of the control.
---@return Vector2
function Control:GetPosition() end
---@return Vector2
function Control.GetPosition() end

--- Sets the position of the control.
---@param position Vector2
function Control:SetPosition(position) end
---@param position Vector2
function Control.SetPosition(position) end
