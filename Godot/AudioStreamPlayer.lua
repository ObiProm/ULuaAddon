---@class AudioStreamPlayer : Node
---@field Stream AudioStream|nil
---@field VolumeDb number
---@field PitchScale number
---@field Playing boolean
---@field Autoplay boolean
---@field StreamPaused boolean
---@field MaxPolyphony integer
---@field MixTarget integer
---@field Bus string
local AudioStreamPlayer = {}

---@param fromPosition? number
function AudioStreamPlayer:Play(fromPosition) end

---@param position number
function AudioStreamPlayer:Seek(position) end

function AudioStreamPlayer:Stop() end

---@return boolean
function AudioStreamPlayer:IsPlaying() end

---@return number
function AudioStreamPlayer:GetPlaybackPosition() end
