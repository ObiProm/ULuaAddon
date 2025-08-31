---@class Audio
Audio = {}

---@param name string Name of the audio bus to create
function Audio.CreateBus(name) end

---@param name string Name of the audio bus to remove
function Audio.RemoveBus(name) end

---@param busName string Name of the audio bus
---@param volume number Volume level (0.0 to 1.0) for the specified bus
function Audio.SetBusVolume(busName, volume) end

---@param busName string Name of the audio bus
---@return number Current volume level (0.0 to 1.0) of the specified bus
function Audio.GetBusVolume(busName) end

---@param volume number Master volume level (0.0 to 1.0)
function Audio.SetMasterVolume(volume) end

---@return number Current master volume level (0.0 to 1.0)
function Audio.GetMasterVolume() end

---@param speed number Playback speed scale factor (1.0 = normal speed)
function Audio.SetPlaybackSpeed(speed) end