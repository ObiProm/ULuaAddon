---@class Vector2
---@field X number @ X component of the vector.
---@field Y number @ Y component of the vector.
---@field Length number @ Magnitude (length) of the vector. Read-only.
---@field LengthSquared number @ Squared length. Useful for performance. Read-only.
---@field IsNormalized boolean @ Returns true if the vector is normalized (length ≈ 1.0). Read-only.
---@field Abs Vector2 @ Returns a new vector with absolute values of each component. Read-only.
---@field Orthogonal Vector2 @ Returns a perpendicular vector (rotated 90°). Read-only.
---@field Angle number @ Returns the angle of the vector in radians. Read-only.
---@field Zero Vector2 @ Static: A zero vector (0, 0).
---@field One Vector2 @ Static: A vector with all components set to 1 (1, 1).
---@field Left Vector2 @ Static: Unit vector pointing left (-1, 0).
---@field Right Vector2 @ Static: Unit vector pointing right (1, 0).
---@field Up Vector2 @ Static: Unit vector pointing up (0, -1) — Y-down in screens.
---@field Down Vector2 @ Static: Unit vector pointing down (0, 1).
local Vector2 = {}

---@return number
function Vector2:DistanceTo(vector) end

---@return number
function Vector2:Dot(vector) end

---@return Vector2
function Vector2:Normalized() end

---@return boolean
function Vector2:IsEqualApprox(vector) end

---@return string
function Vector2:ToString() end