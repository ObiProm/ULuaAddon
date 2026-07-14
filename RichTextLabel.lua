---@class RichTextLabel : Control
---@field Text string BBCode text content.
---@field BBCodeEnabled boolean If true, BBCode parsing is enabled.
---@field FitContent boolean If true, resizes to fit content.
---@field ScrollActive boolean If true, scrolling is active.
---@field ScrollFollowing boolean If true, scrolls to bottom on new text.
---@field SelectionEnabled boolean If true, text can be selected.
---@field MetaUnderlined boolean If true, meta links are underlined.
---@field VisibleRatio number Ratio of visible characters (0.0 to 1.0).
---@field VisibleCharacters integer Number of visible characters (-1 = all).
---@field DefaultColor Color Default text color.
---@field TabSize integer Tab size in spaces.
---@field AutowrapMode integer Text autowrap mode.
---@field MetaClicked LuaEvent Emitted when a meta link is clicked. Parameters: (any meta)
local RichTextLabel = {}

--- Appends BBCode text to the label.
---@param text string
function RichTextLabel:AppendText(text) end
---@param text string
function RichTextLabel.AppendText(text) end

--- Clears all text.
function RichTextLabel:Clear() end
function RichTextLabel.Clear() end

--- Sets the BBCode text.
---@param text string
function RichTextLabel:SetText(text) end
---@param text string
function RichTextLabel.SetText(text) end

--- Pushes a bold tag.
function RichTextLabel:PushBold() end
function RichTextLabel.PushBold() end

--- Pushes an italic tag.
function RichTextLabel:PushItalic() end
function RichTextLabel.PushItalic() end

--- Pushes a color tag.
---@param color Color
function RichTextLabel:PushColor(color) end
---@param color Color
function RichTextLabel.PushColor(color) end

--- Pushes a font size tag.
---@param size integer
function RichTextLabel:PushFontSize(size) end
---@param size integer
function RichTextLabel.PushFontSize(size) end

--- Pushes a meta link tag.
---@param meta any
function RichTextLabel:PushMeta(meta) end
---@param meta any
function RichTextLabel.PushMeta(meta) end

--- Pops the most recent tag.
function RichTextLabel:Pop() end
function RichTextLabel.Pop() end

--- Returns the total number of lines.
---@return integer
function RichTextLabel:GetLineCount() end
---@return integer
function RichTextLabel.GetLineCount() end

--- Returns the total number of visible lines.
---@return integer
function RichTextLabel:GetVisibleLineCount() end
---@return integer
function RichTextLabel.GetVisibleLineCount() end

--- Returns the total content height.
---@return number
function RichTextLabel:GetContentHeight() end
---@return number
function RichTextLabel.GetContentHeight() end
