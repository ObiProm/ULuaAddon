---@class Shop
Shop = {}

---Registers a new type of currency in the game. This should be called during the game's initialization phase.
---@param id string Unique identifier for the currency (e.g., "coins").
---@param name string Display name of the currency (e.g., "Gold Coins").
---@param iconPath string Resource path to the currency's icon (e.g., "res://assets/icons/coin.png").
---@param startValue integer The default starting amount given to new players.
function Shop.RegisterCurrency(id, name, iconPath, startValue) end

---Retrieves the current balance of a specific currency for a given player.
---@param steamId number The player's Steam ID 64.
---@param currencyId string The unique ID of the currency to check.
---@return number The player's current balance of the specified currency. Returns 0 if the currency or player is not found.
function Shop.GetCurrency(steamId, currencyId) end

--- Adds currency by SteamID64
---@param steamId number The player's Steam ID 64.
---@param currencyId string The unique ID of the currency to give.
---@param amount integer Amount of currency.
---@overload fun(playerLobby : PlayerLobby, currencyId: string, amount: integer)
function Shop.AddCurrency(steamId, currencyId, amount) end

---Adds and saves a tower for a player.
---@param player PlayerLobby
---@param towerId string
function Shop.AddTower(player, towerId) end
