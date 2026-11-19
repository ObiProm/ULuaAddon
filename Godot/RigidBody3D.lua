---@class RigidBody3D : PhysicsBody3D
---@field Mass number Mass of the body in kg.
---@field PhysicsMaterialOverride PhysicsMaterial|nil Physics material override.
---@field GravityScale number Gravity multiplier for this body.
---@field CustomIntegrator boolean If true, uses custom integration instead of physics engine.
---@field ContinuousCd boolean If true, enables continuous collision detection.
---@field MaxContactsReported integer Maximum number of contacts reported.
---@field ContactMonitor boolean If true, emits contact signals.
---@field Sleeping boolean If true, body is sleeping (not simulated).
---@field CanSleep boolean If true, body can sleep when inactive.
---@field LockRotation boolean If true, rotation is locked.
---@field Freeze boolean If true, body is frozen (static).
---@field FreezeMode integer Freeze mode (0=static, 1=kinematic).
---@field CenterOfMass Vector3 Center of mass offset.
---@field CenterOfMassMode integer Center of mass mode (0=auto, 1=custom).
---@field Inertia Vector3 Inertia tensor.
---@field DampOverrideLinear number Linear damping override.
---@field DampOverrideAngular number Angular damping override.
---@field DampOverrideLinearEnabled boolean If true, uses linear damping override.
---@field DampOverrideAngularEnabled boolean If true, uses angular damping override.
---@field LinearVelocity Vector3 Current linear velocity.
---@field AngularVelocity Vector3 Current angular velocity.
local RigidBody3D = {}

---Applies a force at the given position.
---@param force Vector3
---@param position Vector3? Position relative to center of mass.
function RigidBody3D:ApplyForce(force, position) end

---Applies a central force.
---@param force Vector3
function RigidBody3D:ApplyCentralForce(force) end

---Applies an impulse at the given position.
---@param impulse Vector3
---@param position Vector3? Position relative to center of mass.
function RigidBody3D:ApplyImpulse(impulse, position) end

---Applies a central impulse.
---@param impulse Vector3
function RigidBody3D:ApplyCentralImpulse(impulse) end

---Applies a torque.
---@param torque Vector3
function RigidBody3D:ApplyTorque(torque) end

---Applies a torque impulse.
---@param impulse Vector3
function RigidBody3D:ApplyTorqueImpulse(impulse) end

---Returns the number of contacting bodies.
---@return integer
function RigidBody3D:GetContactCount() end

---Returns the contacting body at the given index.
---@param contact integer
---@return PhysicsBody3D|nil
function RigidBody3D:GetContactCollider(contact) end
