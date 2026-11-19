---@class Curve3D : Resource
---@field PointCount integer
local Curve3D = {}

---@return number
function Curve3D:GetBakedLength() end

---@param offset number
---@param cubic? boolean
---@return Vector3
function Curve3D:SampleBaked(offset, cubic) end
