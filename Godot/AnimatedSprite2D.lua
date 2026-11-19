---@class AnimatedSprite2D : CanvasItem
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
local AnimatedSprite2D = {}

---Plays the specified animation.
---@param anim? string Animation name. If omitted, plays current.
---@param customSpeed? number Custom speed for this playback.
---@param backwards? boolean If true, plays in reverse.
function AnimatedSprite2D:Play(anim, customSpeed, backwards) end

---Pauses the current animation.
function AnimatedSprite2D:Pause() end

---Stops the current animation.
function AnimatedSprite2D:Stop() end

---Returns true if animation is playing.
---@return boolean
function AnimatedSprite2D:IsPlaying() end

---Sets the animation name.
---@param anim string
function AnimatedSprite2D:SetAnimation(anim) end

---Returns the current animation name.
---@return string
function AnimatedSprite2D:GetAnimation() end
