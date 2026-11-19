---@class WaveParser : Node
---@field CurrentWaveNumber integer The number of the currently active wave (read-only).
---@field TotalWaves integer The total number of loaded waves (read-only).
---@field AllEnemiesSpawned boolean Whether all enemies for the current wave have been spawned (read-only).
---@field AsTable table MoonSharp Lua table representation of this parser instance (read-only).
---@field OnWaveStarted LuaEvent Emitted when a new wave begins. Parameters: (integer waveNumber, WaveData waveData)
---@field OnWavesEnded LuaEvent Emitted when all configured waves have been completed.
---@field OnEnemySpawnRequested LuaEvent Emitted for each individual enemy that needs to be spawned. Parameters: (string enemyType)
local WaveParser = {}

---Begins the wave sequence from the first wave. Resets the internal wave counter and triggers the first wave immediately.
function WaveParser:StartWaves() end

---Loads and registers wave data from a file.
---@param wave integer The wave number to assign this data to.
---@param filePath string Path using the same schemes as FileAccess.
function WaveParser:AddWave(wave, filePath) end

---Manually overrides the timer for the next wave.
---@param time number The time in seconds to wait before the next wave starts.
function WaveParser:SetNextWaveTime(time) end

---Returns the remaining time until the next wave begins.
---@return number Time left in seconds.
function WaveParser:GetNextWaveTime() end

---Halts the wave progression immediately. Stops the wave timer and awaits the completion of any currently active asynchronous spawning tasks before clearing them.
function WaveParser:Stop() end
