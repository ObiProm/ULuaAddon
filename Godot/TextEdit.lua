---@class TextEdit : Control
---@field Text string Current text content.
---@field PlaceholderText string Placeholder text shown when empty.
---@field Editable boolean If true, text can be edited.
---@field WrapMode integer Text wrapping mode (0=none, 1=character, 2=word).
---@field ScrollHorizontal integer Horizontal scroll offset.
---@field ScrollVertical integer Vertical scroll offset.
---@field HighlightCurrentLine boolean If true, current line is highlighted.
---@field DrawTabs boolean If true, tab characters are drawn.
---@field DrawSpaces boolean If true, space characters are drawn.
---@field CaretBlink boolean If true, caret blinks.
---@field CaretBlinkInterval number Caret blink interval in seconds.
---@field TextChanged LuaEvent Emitted when the text changes.
local TextEdit = {}

--- Returns the total number of lines.
---@return integer
function TextEdit:GetLineCount() end

--- Returns the text of the specified line.
---@param line integer
---@return string
function TextEdit:GetLine(line) end

--- Returns the total number of characters.
---@return integer
function TextEdit:GetTextLength() end

--- Inserts text at the caret position.
---@param text string
function TextEdit:InsertTextAtCaret(text) end

--- Clears the text.
function TextEdit:Clear() end

--- Selects all text.
function TextEdit:SelectAll() end

--- Returns the selected text.
---@return string
function TextEdit:GetSelectedText() end

--- Returns the current caret column.
---@return integer
function TextEdit:GetCaretColumn() end

--- Returns the current caret line.
---@return integer
function TextEdit:GetCaretLine() end

--- Sets the caret to the specified line.
---@param line integer
function TextEdit:SetCaretLine(line) end
