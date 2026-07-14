---@class Sprite2D : CanvasItem
---@field Texture Texture2D|nil The texture to display.
---@field Centered boolean If true, texture is centered at origin.
---@field Offset Vector2 Texture offset from origin.
---@field FlipH boolean If true, texture is flipped horizontally.
---@field FlipV boolean If true, texture is flipped vertically.
---@field Hframes integer Number of horizontal frames for spritesheet.
---@field Vframes integer Number of vertical frames for spritesheet.
---@field Frame integer Current frame index.
---@field FrameCoords Vector2i Current frame coordinates in spritesheet.
---@field RegionEnabled boolean If true, uses a region of the texture.
---@field RegionRect Rect2 Region rectangle to use from texture.
local Sprite2D = {}

---Returns true if the texture contains a point at the given position.
---@param point Vector2
---@return boolean
function Sprite2D:IsPixelOpaque(point) end

---Returns the rectangle of the current frame.
---@return Rect2
function Sprite2D:GetRect() end
