---@enum TargetPriority
local TargetPriority = {
    First = 0,
    Last = 1,
    Strongest = 2,
    Weakest = 3
}

---@class StandardTower : Tower
---@field Range number The detection radius of the tower. Updating this automatically resizes the internal collision shape.
---@field Damage integer The amount of damage dealt per shot. Default: 2.
---@field ShootTime number The cooldown time in seconds between shots. Default: 2.0.
---@field IsAvalibleShot boolean true if the tower's cooldown has finished and it is ready to fire.
---@field DamageDealed integer Total damage dealt by this tower since it was placed.
---@field CurrentTarget TargetPriority The current targeting priority. Possible values: First, Last, Strongest, Weakest.
---@field Zombies table<Zombie> Here you can read/add zombies
---@field UseModelFront boolean Passed to Godot's LookAt as useModelFront. Controls which axis of the model is treated as "forward" when the tower rotates toward a target. Default: false.
local StandardTower = {}

---Starts tower combat logic after placement. Called automatically from OnTowerPlaced, but you can call it manually if you override placement logic.
function StandardTower:InitializeStandardTower() end

---Changes the tower's targeting priority. If called on server, changes this on all clients.
---@param newTarget integer The new priority as an integer (0 = First, 1 = Last, 2 = Strongest, 3 = Weakest).
function StandardTower:RpcChangeTarget(newTarget) end

---By default InitializeStandardTower calls LoadModel(self.towerModel); use this to do it later.
---@param node Node Node to become a model
function StandardTower:LoadModel(node) end

---Gets multiple targets using the selected targeting priority.
---@param count number
---@param targetPriority TargetPriority
---@return table<Zombie>
function StandardTower:GetTargets(count, targetPriority) end

---Virtual function, calls every towers shot
---@param zombie Zombie
function StandardTower:OnShot(zombie) end

---Virtual function, overrides default shot
---@param zombie Zombie
function StandardTower:ProcessShot(zombie) end

---@param zombie Zombie
function StandardTower:OnZombieEnteredRange(zombie) end

---@param zombie Zombie
function StandardTower:OnZombieExitedRange(zombie) end
