---@class AnimationPlayer : Node
---@field CurrentAnimation string Name of the currently playing animation.
---@field CurrentAnimationPosition number Current position in the playing animation.
---@field CurrentAnimationLength number Length of the currently playing animation.
---@field CurrentAnimationLoop boolean If true, current animation loops.
---@field PlaybackSpeed number Playback speed multiplier.
---@field PlaybackActive boolean If true, playback is active.
---@field RootNode NodePath Root node for animation tracks.
---@field RootMotionTrack NodePath Track used for root motion.
---@field BlendTime number Default blend time between animations.
---@field Playing boolean If true, an animation is playing.
---@field Autoplay string Name of animation to autoplay on _Ready.
---@field Library AnimationLibrary|nil Animation library resource.
---@field ResetOnSave boolean If true, resets to initial pose on save.
---@field ResetOnSaveEnabled boolean Alias for ResetOnSave.
local AnimationPlayer = {}

---Plays the specified animation.
---@param name string
---@param custom_blend? number
---@param custom_speed? number
---@param from_end? boolean
function AnimationPlayer:Play(name, custom_blend, custom_speed, from_end) end

---Stops the current animation.
---@param keep_state? boolean If true, keeps the current state.
function AnimationPlayer:Stop(keep_state) end

---Returns true if an animation is playing.
---@return boolean
function AnimationPlayer:IsPlaying() end

---Returns the name of the currently assigned animation.
---@return string
function AnimationPlayer:GetCurrentAnimation() end

---Seeks to a position in the current animation.
---@param position number
---@param update boolean? If true, updates immediately.
function AnimationPlayer:Seek(position, update) end

---Returns true if the animation player has the specified animation.
---@param name string
---@return boolean
function AnimationPlayer:HasAnimation(name) end

---Queues an animation to play after the current one.
---@param name string
function AnimationPlayer:Queue(name) end

---Clears the animation queue.
function AnimationPlayer:ClearQueue() end

---Advances the animation by the given delta.
---@param delta number
function AnimationPlayer:Advance(delta) end
