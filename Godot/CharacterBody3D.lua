---@class CharacterBody3D : PhysicsBody3D
---@field Velocity Vector3 Current velocity of the body.
---@field UpDirection Vector3 Direction considered as "up" for floor detection.
---@field FloorMaxAngle number Maximum angle (radians) for a surface to be considered floor.
---@field FloorSnapLength number Length of the floor snap.
---@field FloorStopOnSlope boolean If true, stops on slopes.
---@field FloorConstantFloorSpeed boolean If true, keeps constant speed on floor.
---@field FloorBlockOnWall boolean If true, blocks movement when hitting a wall on floor.
---@field MaxSlides integer Maximum number of slides per frame.
---@field SlideAcceleration number Acceleration used for sliding.
---@field WallMinSlideAngle number Minimum angle (radians) for wall sliding.
---@field MotionMode integer Motion mode (0=grounded, 1=floating).
---@field SafeMargin number Extra margin for collision detection.
---@field PlatformOnLeave integer Platform behavior when leaving (0=add velocity, 1=add up velocity, 2=none).
---@field PlatformFloorLayers integer Layers considered as floor platforms.
---@field PlatformWallLayers integer Layers considered as wall platforms.
local CharacterBody3D = {}

---Moves and slides the body based on its velocity.
---@return boolean True if the body collided with something.
function CharacterBody3D:MoveAndSlide() end

---Returns true if the body is on the floor.
---@return boolean
function CharacterBody3D:IsOnFloor() end

---Returns true if the body is on the wall.
---@return boolean
function CharacterBody3D:IsOnWall() end

---Returns true if the body is on the ceiling.
---@return boolean
function CharacterBody3D:IsOnCeiling() end

---Returns the floor normal if on the floor.
---@return Vector3
function CharacterBody3D:GetFloorNormal() end

---Returns the wall normal if on the wall.
---@return Vector3
function CharacterBody3D:GetWallNormal() end

---Returns the last collision count.
---@return integer
function CharacterBody3D:GetSlideCollisionCount() end

---Returns the platform velocity.
---@return Vector3
function CharacterBody3D:GetPlatformVelocity() end

---Returns the real velocity (including platform velocity).
---@return Vector3
function CharacterBody3D:GetRealVelocity() end
