---@class Label : Control
---@field Text string Text content of the label.
---@field HorizontalAlignment integer Horizontal alignment (0=left, 1=center, 2=right, 3=fill).
---@field VerticalAlignment integer Vertical alignment (0=top, 1=center, 2=bottom).
---@field AutowrapMode integer Text autowrap mode (0=off, 1=arbitrary, 2=word, 3=word_smart).
---@field ClipText boolean If true, text is clipped when exceeding width.
---@field Uppercase boolean If true, text is displayed in uppercase.
---@field TextOverrunBehavior integer How text overflows (0=clip, 1=ellipsis).
---@field MaxLinesVisible integer Maximum number of visible lines (-1 = all).
---@field VisibleRatio number Ratio of visible characters (0.0 to 1.0).
---@field VisibleCharacters integer Number of visible characters (-1 = all).
local Label = {}

--- Returns the number of lines.
---@return integer
function Label:GetLineCount() end
---@return integer
function Label.GetLineCount() end

--- Returns the number of visible lines.
---@return integer
function Label:GetVisibleLineCount() end
---@return integer
function Label.GetVisibleLineCount() end

--- Returns the line height in pixels.
---@return integer
function Label:GetLineHeight() end
---@return integer
function Label.GetLineHeight() end
