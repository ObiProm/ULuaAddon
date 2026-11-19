---@class Area3D : CollisionObject3D
---@field Gravity number Gravity strength inside the area.
---@field GravityVector Vector3 Direction of gravity inside the area.
---@field GravityIsPoint boolean If true, gravity points towards a point.
---@field GravityPointUnitDistance number Distance at which point gravity is at full strength.
---@field GravityPointCenter Vector3 Center point for point gravity.
---@field LinearDamp number Linear damp inside the area.
---@field AngularDamp number Angular damp inside the area.
---@field WindForceMagnitude number Wind force magnitude inside the area.
---@field WindAttenuationFactor number Wind attenuation factor inside the area.
---@field WindSourcePositionVector Vector3 Wind source position.
---@field WindDirection Vector3 Wind direction inside the area.
---@field AudioBus string Audio bus name for sound inside the area.
---@field AudioBusOverride boolean If true, overrides the default audio bus.
---@field Monitorable boolean If true, other areas can detect this area.
---@field Monitoring boolean If true, this area detects other areas/bodies.
---@field Priority integer Priority for overlapping areas (higher = takes precedence).
---@field SpaceOverride integer Space override mode (0=none, 1=combine, 2=combine-replace, 3=replace, 4=replace-combine).
local Area3D = {}

---Returns an array of overlapping areas.
---@return table
function Area3D:GetOverlappingAreas() end

---Returns an array of overlapping bodies.
---@return table
function Area3D:GetOverlappingBodies() end

---Returns true if the area overlaps the given area.
---@param area Area3D
---@return boolean
function Area3D:OverlapsArea(area) end

---Returns true if the area overlaps the given body.
---@param body PhysicsBody3D
---@return boolean
function Area3D:OverlapsBody(body) end

---Returns true if the area has any overlapping areas.
---@return boolean
function Area3D:HasOverlappingAreas() end

---Returns true if the area has any overlapping bodies.
---@return boolean
function Area3D:HasOverlappingBodies() end
