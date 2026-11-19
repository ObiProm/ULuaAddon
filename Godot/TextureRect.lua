---@class TextureRect : Control
---@field Texture Texture2D|nil The texture to display.
---@field ExpandMode integer How the texture expands (0=keep size, 1=fit width, 2=fit height, 3=fit both, 4=ignore size).
---@field StretchMode integer How the texture stretches (0=scale, 1=tile, 2=keep, 3=keep_centered, 4=keep_aspect, 5=keep_aspect_centered, 6=keep_aspect_covered).
---@field FlipH boolean If true, texture is flipped horizontally.
---@field FlipV boolean If true, texture is flipped vertically.
local TextureRect = {}
