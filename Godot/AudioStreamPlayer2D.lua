---@class AudioStreamPlayer2D : Node2D
---@field Stream AudioStream|nil
---@field VolumeDb number
---@field PitchScale number
---@field Playing boolean
---@field Autoplay boolean
---@field StreamPaused boolean
---@field MaxDistance number
---@field Attenuation number
---@field AreaMask integer
---@field MaxPolyphony integer
---@field PanningStrength number
---@field Bus string
local AudioStreamPlayer2D = {}

---@param fromPosition? number
function AudioStreamPlayer2D:Play(fromPosition) end

---@param position number
function AudioStreamPlayer2D:Seek(position) end

function AudioStreamPlayer2D:Stop() end

---@return boolean
function AudioStreamPlayer2D:IsPlaying() end

---@return number
function AudioStreamPlayer2D:GetPlaybackPosition() end
