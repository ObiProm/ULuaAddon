---@class BoxContainer : Container
---@field Alignment integer Alignment of children (0=begin, 1=center, 2=end).
---@field Vertical boolean If true, arranges children vertically.
local BoxContainer = {}

--- Returns the separation between children in pixels.
---@return integer
function BoxContainer:GetSeparation() end
---@return integer
function BoxContainer.GetSeparation() end
