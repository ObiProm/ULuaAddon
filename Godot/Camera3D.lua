---@class Camera3D : Node3D
---@field Projection integer Projection mode (0=perspective, 1=orthogonal, 2=frustum).
---@field Fov number Field of view in degrees (perspective).
---@field Size number Camera size in units (orthogonal).
---@field FrustumOffset Vector2 Offset for frustum projection.
---@field Near number Near clipping distance.
---@field Far number Far clipping distance.
---@field KeepAspect integer Keep aspect mode (0=height, 1=width).
---@field CullMask integer Cull mask for which layers are rendered.
---@field Environment Environment|nil Environment override for this camera.
---@field Attributes CameraAttributes|nil Camera attributes (DOF, exposure, etc.).
---@field DopplerTracking integer Doppler tracking mode (0=disabled, 1=idle, 2=physics).
---@field Current boolean If true, this is the active camera.
---@field HOffset number Horizontal offset.
---@field VOffset number Vertical offset.
local Camera3D = {}

---Makes this camera the current camera.
function Camera3D:MakeCurrent() end

---Clears the current camera if this is it.
function Camera3D:ClearCurrent() end

---Returns true if this is the current camera.
---@return boolean
function Camera3D:IsCurrent() end

---Projects a 3D point to screen space.
---@param world_point Vector3
---@return Vector2
function Camera3D:ProjectPosition(world_point) end

---Unprojects a screen point to a 3D ray.
---@param screen_point Vector2
---@return Vector3
function Camera3D:ProjectRayOrigin(screen_point) end

---Returns the normalized world-space ray direction for a screen point.
---@param screen_point Vector2
---@return Vector3
function Camera3D:ProjectRayNormal(screen_point) end

---Returns the camera's global transform.
---@return Transform3D
function Camera3D:GetCameraTransform() end
