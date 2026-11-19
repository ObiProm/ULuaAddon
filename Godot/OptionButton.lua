---@class OptionButton : Button
---@field ItemCount integer Number of items in the option list.
---@field Selected integer Index of the currently selected item.
---@field AllowReselect boolean If true, selecting the same item again emits a signal.
---@field FitToLongestItem boolean If true, button size fits the longest item.
---@field ItemSelected LuaEvent Emitted when an item is selected. Parameters: (integer index)
local OptionButton = {}

--- Adds a new item with the given text.
---@param text string
---@param id? integer
function OptionButton:AddItem(text, id) end

--- Adds an item with an icon.
---@param texture Texture2D
---@param text string
---@param id? integer
function OptionButton:AddIconItem(texture, text, id) end

--- Sets the text of the item at the given index.
---@param index integer
---@param text string
function OptionButton:SetItemText(index, text) end

--- Returns the text of the item at the given index.
---@param index integer
---@return string
function OptionButton:GetItemText(index) end

--- Returns the ID of the item at the given index.
---@param index integer
---@return integer
function OptionButton:GetItemId(index) end

--- Returns the index of the item with the given ID.
---@param id integer
---@return integer
function OptionButton:GetItemIndex(id) end

--- Removes the item at the given index.
---@param index integer
function OptionButton:RemoveItem(index) end

--- Clears all items.
function OptionButton:Clear() end

--- Selects the item at the given index.
---@param index integer
function OptionButton:Select(index) end
