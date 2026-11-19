---@class Node
---@field Name string
local Node = {}

--- Adds a child node to this node.
---@param node Node
---@param forceReadableName? boolean If true, forces a unique name.
function Node:AddChild(node, forceReadableName) end

--- Inserts a child node at a specific index.
---@param node Node
---@param index integer
function Node:MoveChild(node, index) end

--- Removes a child node from this node.
---@param node Node
function Node:RemoveChild(node) end

--- Returns the child node at the given index.
---@param index integer
---@return Node
function Node:GetChild(index) end

--- Returns the index position of the given child node.
---@param node Node
---@return integer
function Node:GetChildIndex(node) end

--- Returns the number of child nodes.
---@return integer
function Node:GetChildCount() end

--- Returns true if this node is an ancestor of the given node.
---@param node Node
---@return boolean
function Node:IsAncestorOf(node) end

--- Returns the parent node, or nil if none exists.
---@return Node|nil
function Node:GetParent() end

--- Sets the parent node (use with caution).
---@param node Node|nil
function Node:SetParent(node) end

--- Retrieves a node by its path relative to this node.
---@param path string
---@return Node
function Node:GetNode(path) end

--- Checks if a node exists at the given path.
---@param path string
---@return boolean
function Node:HasNode(path) end

--- Gets a node by path, or returns nil if not found.
---@param path string
---@return Node|nil
function Node:GetNodeOrNull(path) end

--- Propagates ownership to children (used internally in editor).
function Node:PropagateOwnership() end

-- Ownership & Scene Management

--- Sets the owner of this node (used for scene editing and instancing).
---@param owner Node|nil
function Node:SetOwner(owner) end

--- Gets the owner of this node.
---@return Node|nil
function Node:GetOwner() end

--- Sets the file path of the scene this node belongs to.
---@param path string
function Node:SetSceneFilePath(path) end

--- Gets the file path of the scene this node belongs to.
---@return string
function Node:GetSceneFilePath() end

--- Makes a child node editable when this scene is instanced.
---@param node Node
---@param editable boolean
function Node:SetEditableInstance(node, editable) end

--- Returns whether this node is editable in its instance.
---@return boolean
function Node:IsEditableInstance() end

-- Process Control

--- Enables or disables the _Process callback.
---@param enable boolean
function Node:SetProcess(enable) end

--- Enables or disables the _PhysicsProcess callback.
---@param enable boolean
function Node:SetPhysicsProcess(enable) end

--- Sets the priority of physics processing.
---@param priority integer
function Node:SetPhysicsProcessPriority(priority) end

-- Signals (restricted — use RpcNode for RPC, LuaEvent for events)

-- Tree & State Events (Virtual Methods)

--- Called when the node is created by game.CreateNode().
function Node:_Init() end

--- Called when the node enters the scene tree.
function Node:_EnterTree() end

--- Called when the node is ready (after entering tree and all children are ready).
function Node:_Ready() end

--- Called every frame if processing is enabled.
---@param delta number
function Node:_Process(delta) end

--- Called every physics frame if physics processing is enabled.
---@param delta number
function Node:_PhysicsProcess(delta) end

--- Called when the node exits the scene tree.
function Node:_ExitTree() end

-- Utility

--- Queues the node for deletion in the next frame.
function Node:QueueFree() end

--- Returns true if the node is queued for deletion at the end of the current frame.
---@return boolean
function Node:IsQueuedForDeletion() end

--- Returns true if the node is inside the scene tree.
---@return boolean
function Node:IsInsideTree() end

--- Requests a redraw if the node is a CanvasItem.
function Node:Update() end
