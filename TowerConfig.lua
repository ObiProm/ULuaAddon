---@class TowerConfig
---@field PrintName string Display name of the tower shown in UI.
---@field Icon string Resource path to the tower's icon image.
---@field PlacementCost number Resource cost required to place this tower initially.
---@field LockPathLevel number Level at which upgrade paths become locked.
---@field UpgradePathsCount number Read-only: Number of available upgrade paths for this tower.
---@field Scene string Resource path to the tower's scene file.
---@field BaseStats table Dictionary containing the tower's base statistics.
---@field UpgradePaths table[] Array of upgrade path configurations.
local TowerConfig = {}