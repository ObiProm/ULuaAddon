---@class EndGameManager : Control
---@field HeaderLabel Label
---@field EndGamePanel PanelContainer
---@field VictoryColor Color
---@field DefeatColor Color
---@field ExitToMenu Button
---@field MuteMusic Button
---@field CloseButton Button
---@field StatsContainer VBoxContainer
---@field AudioPlayer AudioStreamPlayer
---@field Animation AnimationPlayer
local EndGameManager = {}

---@param isVictory boolean
---@param stats table<string, any>
function EndGameManager:Initialize(isVictory, stats) end
