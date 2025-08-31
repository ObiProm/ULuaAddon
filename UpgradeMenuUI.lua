---@class UpgradeMenuUI : Control
local UpgradeMenuUI = {}

---@param tower Tower
function UpgradeMenuUI:SetTower(tower) end

---@param icon Texture2D
function UpgradeMenuUI:SetUpgradeIcon(icon) end

---@param text string
function UpgradeMenuUI:SetUpgradeNameText(text) end

---@param text string
function UpgradeMenuUI:SetUpgradeDescriptionText(text) end

---@param text string
function UpgradeMenuUI:SetUpgradeButtonText(text) end

---@param func function
function UpgradeMenuUI:SetUpgradSetUpgradeButtonCallbackeButtonText(func) end

---@param disabled boolean
function UpgradeMenuUI:SetDisabledUpgrade(disabled) end

function UpgradeMenuUI:Reset() end