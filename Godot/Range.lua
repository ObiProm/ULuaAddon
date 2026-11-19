---@class Range : Control
---@field Value number Current value.
---@field MinValue number Minimum value.
---@field MaxValue number Maximum value.
---@field Step number Step increment.
---@field AllowGreater boolean If true, allows values greater than MaxValue.
---@field AllowLesser boolean If true, allows values less than MinValue.
---@field Rounded boolean If true, rounds value to integer.
---@field ValueChanged LuaEvent Emitted when value changes. Parameters: (number value)
local Range = {}

--- Returns the current value.
---@return number
function Range:GetValue() end

--- Sets the current value.
---@param value number
function Range:SetValue(value) end

--- Returns the minimum value.
---@return number
function Range:GetMin() end

--- Returns the maximum value.
---@return number
function Range:GetMax() end

--- Returns the step increment.
---@return number
function Range:GetStep() end
