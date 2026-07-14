---@class LineEdit : Control
---@field Text string Current text content.
---@field PlaceholderText string Placeholder text shown when empty.
---@field MaxLength integer Maximum number of characters allowed (0 = unlimited).
---@field Editable boolean If true, text can be edited.
---@field Secret boolean If true, characters are hidden (password mode).
---@field SecretCharacter string Character used to mask text in secret mode.
---@field ExpandToTextLength boolean If true, expands to fit text length.
---@field HorizontalAlignment integer Text horizontal alignment (0=left, 1=center, 2=right).
---@field ContextMenuEnabled boolean If true, right-click context menu is shown.
---@field SelectAllOnFocus boolean If true, selects all text when focused.
---@field CaretBlink boolean If true, caret blinks.
---@field CaretBlinkInterval number Caret blink interval in seconds.
---@field CaretColumn integer Current caret column position.
---@field CaretForceDisplayed boolean If true, caret is always visible.
---@field ClearButtonEnabled boolean If true, shows a clear button.
---@field Flat boolean If true, no background decoration.
---@field TextChanged LuaEvent Emitted when the text changes. Parameters: (string new_text)
---@field TextSubmitted LuaEvent Emitted when Enter is pressed. Parameters: (string text)
local LineEdit = {}

--- Selects all text.
function LineEdit:SelectAll() end
function LineEdit.SelectAll() end

--- Deselects all text.
function LineEdit:Deselect() end
function LineEdit.Deselect() end

--- Returns true if text is selected.
---@return boolean
function LineEdit:IsSelectionEnabled() end
---@return boolean
function LineEdit.IsSelectionEnabled() end

--- Returns the selected text.
---@return string
function LineEdit:GetSelectedText() end
---@return string
function LineEdit.GetSelectedText() end

--- Clears the text.
function LineEdit:Clear() end
function LineEdit.Clear() end
