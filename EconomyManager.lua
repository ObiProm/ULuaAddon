---@class EconomyManager : Node
---@field PurchaseSuccess LuaEvent Emitted when a purchase is successful. Parameters: (string currencyType, integer amount)
---@field PurchaseFailed LuaEvent Emitted when a purchase fails. Parameters: (string errorMessage)
EconomyManager = {}

---@param currencyType string Unique identifier for the currency (e.g., "Coins", "Gems")
---@param symbol string Display symbol for this currency (e.g., "$", "💎")
---@param defaultAmount integer Default starting amount for new players
function EconomyManager:RegisterCurrency(currencyType, symbol, defaultAmount) end

---@param playerId integer Player's network ID
---@param currencyType string Currency type to add
---@param amount integer Amount to add (positive) or remove (negative)
---@return boolean true if operation was successful, false otherwise
function EconomyManager:AddCurrency(playerId, currencyType, amount) end

---@param currencyType string Currency type for the request
---@param amount integer Amount to add
function EconomyManager:AddCurrencyRequest(currencyType, amount) end

---@param playerId integer Player's network ID
---@param currencyType string Currency type to remove
---@param amount integer Amount to remove
function EconomyManager:RemoveCurrency(playerId, currencyType, amount) end

---@param currencyType string Currency type to check
---@param amount integer Amount to check affordability for
---@param playerId? integer Player's network ID
---@return boolean true if player can afford the purchase, false otherwise
function EconomyManager:CanAfford(currencyType, amount, playerId) end

---@param currencyType string Currency type to get balance for
---@param playerId integer Player's network ID
---@return integer Current balance for the specified currency
function EconomyManager:GetBalance(currencyType, playerId) end

---@param currencyType string Currency type the label should display
---@param label table Godot Label node wrapped as Lua table (must have GodotNode field)
function EconomyManager:RegisterUILabel(currencyType, label) end

---@param currencyType string Currency type to spend
---@param amount integer Amount to spend
function EconomyManager:SendRequestPurchase(currencyType, amount) end

---@param currencyType string Currency type to spend
---@param amount integer Amount to spend
---@param playerId? integer Player's network ID
---@return boolean true if purchase was successful, false otherwise
function EconomyManager:ServerProcessPurchase(currencyType, amount, playerId) end