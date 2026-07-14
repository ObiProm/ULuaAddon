---@class AnimatedSprite3D : Node3D
---@field SpriteFrames SpriteFrames|nil Sprite frames resource.
---@field Animation string Name of the current animation.
---@field Autoplay string Name of animation to autoplay on _Ready.
---@field Frame integer Current frame index.
---@field FrameProgressed boolean If true, emits frame_changed signal.
---@field SpeedScale number Animation speed multiplier.
---@field Centered boolean If true, texture is centered at origin.
---@field Offset Vector2 Texture offset from origin.
---@field FlipH boolean If true, texture is flipped horizontally.
---@field FlipV boolean If true, texture is flipped vertically.
---@field Playing boolean Whether animation is currently playing.
---@field PixelSize number Size of one pixel in world units.
---@field BillboardMode integer Billboard mode (0=disabled, 1=enabled, 2=fixed Y, 3=particles).
---@field DoubleSided boolean If true, renders from both sides.
---@field Transparent boolean If true, enables transparency.
---@field Shaded boolean If true, receives lighting.
---@field FixedSize boolean If true, size is fixed regardless of distance.
local AnimatedSprite3D = {}

---Plays the specified animation.
---@param anim? string Animation name. If omitted, plays current.
---@param customSpeed? number Custom speed for this playback.
---@param backwards? boolean If true, plays in reverse.
function AnimatedSprite3D:Play(anim, customSpeed, backwards) end

---Pauses the current animation.
function AnimatedSprite3D:Pause() end

---Stops the current animation.
function AnimatedSprite3D:Stop() end

---Returns true if animation is playing.
---@return boolean
function AnimatedSprite3D:IsPlaying() end
