---@class Texture2D : Resource
---@field Width integer Width of the texture in pixels.
---@field Height integer Height of the texture in pixels.
---@field Size Vector2i Size of the texture.
---@field ResourcePath string Path to the texture resource.
local Texture2D = {}

---Returns the size of the texture.
---@return Vector2i
function Texture2D:GetSize() end

---Returns the width of the texture.
---@return integer
function Texture2D:GetWidth() end

---Returns the height of the texture.
---@return integer
function Texture2D:GetHeight() end
