---@diagnostic disable: missing-return
--- Allows to use mod resources. All resources loading with path relative to mod folder.
---@class ResourceManager
ResourceManager = {}

---@param path string
---@return string
function ResourceManager.GetStringResource(path) end

---@param path string
---@return PackedScene
function ResourceManager.GetSceneResource(path) end

---@param path string
---@return Texture2D
function ResourceManager.GetTexrure2DResource(path) end

---@return Texture2D
function ResourceManager.GetPlaceholderTexture() end

---@param path string
---@return Texture2D
function ResourceManager.GetTexrure2DResourceOrPlaceholder(path) end

---@param path string
---@return AudioStream
function ResourceManager.GetAudioResource(path) end

---@param path string
---@return boolean
function ResourceManager.ResourceExists(path) end