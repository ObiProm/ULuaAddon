---@class SettingsManagers
---@field OnSettingChanged LuaEvent Event triggered when a game setting changes. Parameters: (settingId: string, value: any)
SettingsManager = {}

---@param settingId string The unique identifier of the setting to retrieve
---@return any The current value of the specified setting
function SettingsManager.GetSettingValue(settingId) end

---@param settingId string The unique identifier of the setting to modify
---@param value any The new value to set for the specified setting
function SettingsManager.SetSettingValue(settingId, value) end