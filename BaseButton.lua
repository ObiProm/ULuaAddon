---@class BaseButton : Control
---@field Disabled boolean If true, the button is non-interactive.
---@field ToggleMode boolean If true, the button stays pressed after clicking.
---@field ButtonPressed boolean Whether the button is currently pressed (toggle mode).
---@field ActionMode integer When the button activates (0=button press, 1=button release).
---@field ButtonMask integer Mouse button mask that activates the button.
---@field KeepPressedOutside boolean If true, button stays pressed when released outside.
---@field Pressed LuaEvent Emitted when the button is pressed.
---@field Toggled LuaEvent Emitted when the button is toggled. Parameters: (boolean toggled_on)
---@field ButtonDown LuaEvent Emitted when the button is pressed down.
---@field ButtonUp LuaEvent Emitted when the button is released.
local BaseButton = {}

--- Returns true if the button is pressed.
---@return boolean
function BaseButton:IsPressed() end
---@return boolean
function BaseButton.IsPressed() end

--- Returns true if the button is disabled.
---@return boolean
function BaseButton:IsDisabled() end
---@return boolean
function BaseButton.IsDisabled() end

--- Returns true if the button is in toggle mode.
---@return boolean
function BaseButton:IsToggled() end
---@return boolean
function BaseButton.IsToggled() end

--- Emits the pressed signal programmatically.
function BaseButton:EmitPressed() end
function BaseButton.EmitPressed() end
