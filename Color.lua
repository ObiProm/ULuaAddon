-- ---@class Color
-- ---@field R number @ Red component [0.0–1.0].
-- ---@field G number @ Green component [0.0–1.0].
-- ---@field B number @ Blue component [0.0–1.0].
-- ---@field A number @ Alpha (transparency) component [0.0–1.0].
-- ---@field R8 integer @ Red as byte [0–255]. Read-only.
-- ---@field G8 integer @ Green as byte [0–255]. Read-only.
-- ---@field B8 integer @ Blue as byte [0–255]. Read-only.
-- ---@field A8 integer @ Alpha as byte [0–255]. Read-only.
-- ---@field H number @ Hue in HSV color space [0.0–1.0]. Read-only.
-- ---@field S number @ Saturation in HSV [0.0–1.0]. Read-only.
-- ---@field V number @ Value (brightness) in HSV [0.0–1.0]. Read-only.
-- ---@field Gray number @ Grayscale equivalent. Read-only.
-- ---@field Inverted Color @ Returns the inverted color. Read-only.
-- ---@field Luminance number @ Perceived brightness. Read-only.
-- ---@field IsGrayscale boolean @ True if R == G == B. Read-only.
-- local Color = {}

-- --- Creates a color from HSV values.
-- ---@param h number @ Hue [0–1]
-- ---@param s number @ Saturation [0–1]
-- ---@param v number @ Value [0–1]
-- ---@param a number @ Alpha [0–1], optional.
-- ---@return Color
-- function Color:FromHsv(h, s, v, a) end

-- --- Linearly interpolates between two colors.
-- ---@param to Color
-- ---@param weight number @ Interpolation factor [0.0–1.0]
-- ---@return Color
-- function Color:LinearInterpolate(to, weight) end

-- --- Returns the HTML hex string representation.
-- ---@return string
-- function Color:ToHtml() end

-- --- Returns true if colors are approximately equal.
-- ---@param other Color
-- ---@return boolean
-- function Color:IsEqualApprox(other) end

-- ---@return string
-- function Color:ToString() end

---@class Color
local Color = {}