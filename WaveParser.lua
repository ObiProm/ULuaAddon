---@class WaveParser : Node
---@field CurrentWaveNumber number
---@field TotalWaves number
---@field OnWaveStarted LuaEvent
---@field OnWavesEnded LuaEvent
---@field OnEnemySpawnRequested LuaEvent
local WaveParser = {}

function WaveParser:StartWaves() end
function WaveParser:Stop() end

---@param time number
function WaveParser:SetNextWaveTime(time) end

---@return number
function WaveParser:GetNextWaveTime() end

---@param wave number
---@param filePath string
function WaveParser:AddWave(wave, filePath) end