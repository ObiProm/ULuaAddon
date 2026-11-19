---@class Vector3
---@field X number @ X component.
---@field Y number @ Y component.
---@field Z number @ Z component.
---@field Length number @ Magnitude of the vector. Read-only.
---@field LengthSquared number @ Squared length. Read-only.
---@field IsNormalized boolean @ True if normalized. Read-only.
---@field Abs Vector3 @ Vector with absolute component values. Read-only.
---@field Sign Vector3 @ Returns sign (-1, 0, or 1) of each component. Read-only.
---@field Floor Vector3 @ Returns vector with floored components. Read-only.
---@field Ceil Vector3 @ Returns vector with ceiled components. Read-only.
---@field Round Vector3 @ Returns vector with rounded components. Read-only.
---@field Zero Vector3 @ Static: (0, 0, 0).
---@field One Vector3 @ Static: (1, 1, 1).
---@field Left Vector3 @ Static: (-1, 0, 0).
---@field Right Vector3 @ Static: (1, 0, 0).
---@field Up Vector3 @ Static: (0, 1, 0).
---@field Down Vector3 @ Static: (0, -1, 0).
---@field Forward Vector3 @ Static: (0, 0, -1) — assuming -Z is forward.
---@field Back Vector3 @ Static: (0, 0, 1).
local Vector3 = {}

---@return number
function Vector3:DistanceTo(vector) end

---@return number
function Vector3:Dot(vector) end

---@return Vector3
function Vector3:Cross(vector) end

---@return Vector3
function Vector3:Normalized() end

---@return boolean
function Vector3:IsEqualApprox(vector) end

---@return string
function Vector3:ToString() end