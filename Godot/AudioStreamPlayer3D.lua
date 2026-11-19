---@class AudioStreamPlayer3D : Node3D
---@field Stream AudioStream|nil
---@field VolumeDb number
---@field UnitSize number
---@field MaxDb number
---@field PitchScale number
---@field Playing boolean
---@field Autoplay boolean
---@field StreamPaused boolean
---@field MaxDistance number
---@field AttenuationModel integer
---@field MaxPolyphony integer
---@field PanningStrength number
---@field Bus string
local AudioStreamPlayer3D = {}

---@param fromPosition? number
function AudioStreamPlayer3D:Play(fromPosition) end

---@param position number
function AudioStreamPlayer3D:Seek(position) end

function AudioStreamPlayer3D:Stop() end

---@return boolean
function AudioStreamPlayer3D:IsPlaying() end

---@return number
function AudioStreamPlayer3D:GetPlaybackPosition() end
