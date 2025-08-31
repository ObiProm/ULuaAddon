---@class DiscordActivity
DiscordActivity = {}

---Sets the activity state (the lower line in Rich Presence)
---@param state string The state text, e.g. "In lobby" or "Playing Solo"
function DiscordActivity.SetState(state) end

---Sets the activity details (the upper line in Rich Presence)
---@param details string The description of current activity, e.g. "In menu" or "Survival Mode"
function DiscordActivity.SetDetails(details) end