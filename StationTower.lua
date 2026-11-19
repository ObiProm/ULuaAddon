---@class StationTower : Tower
---@field SpawnedScenePath string Mod-relative scene path instantiated for each minion.
---@field SpawnInterval number Delay in seconds between spawn attempts. Default: 30.
---@field MaxActiveMinions integer Maximum active minions. A negative value disables the list-count check; the network spawner still limits spawning to 64.
---@field Minions table<MovableTower> Active minions spawned by this station.
---@field Minion table<string, number> Numeric values copied to every spawned minion.
local StationTower = {}

---Called after the station's timer and network spawner are initialized.
function StationTower:OnStationReady() end

---@param minion MovableTower
function StationTower:OnMinionSpawned(minion) end

---@param minion MovableTower
function StationTower:OnMinionDied(minion) end

---@param minion MovableTower
function StationTower:OnMinionReachedEnd(minion) end

---@param timeLeft number
function StationTower:OnSpawnTimerUpdate(timeLeft) end
