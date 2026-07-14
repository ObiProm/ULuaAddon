---@class SpinBox : Range
---@field Suffix string Suffix displayed after the value.
---@field Prefix string Prefix displayed before the value.
---@field Editable boolean If true, value can be edited.
---@field UpdateOnTextChanged boolean If true, updates value on text change.
---@field SelectAllOnFocus boolean If true, selects all text on focus.
local SpinBox = {}

---Returns the internal LineEdit.
---@return LineEdit
function SpinBox:GetLineEdit() end

---Applies the current value.
function SpinBox:Apply() end
