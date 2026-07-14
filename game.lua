---@diagnostic disable: missing-return
---@class game
game = {}

---@param object userdata
---@return string
function game.GetUserdataName(object) end

---@param className string
---@return boolean
function game.IsClassRegistered(className) end

---@return Node
function game.GetRoot() end

---@return Node
function game.GetCurrentScene() end

---@param obj any
---@return boolean
function game.IsNode(obj) end

---@return string
function game.GetLanguage() end

---Converts Godot.Node to node wrapper (table with specific metatable)
---@param node Node
---@return table
function game.CreateNodeWrapper(node) end

---@param map string
---@return PackedScene
function game.GetMap(map) end

---@return PackedScene
function game.GetUIPacked() end

---@return PackedScene
function game.GetPlayerPacked() end

---@return table
function game.GetWaveParser() end

---@return LuaEvent
function game.CreateEvent() end

---@return string
function game.NewStringGUID() end

---@param path string
---@return PackedScene
function game.LoadScene(path) end

---@param room Room
---@return RoomGameScene
function game.GetRoomGameScene(room) end

---@param tbl table
---@return integer
function game.GetTableKeysCount(tbl) end

---Prints all Lua tables registered with nodes to debug log
function game.PrintAllLuaTables() end

---Prints keys of a specific table to debug log
---@param tbl table
function game.PrintTableKeys(tbl) end

---Registers a Lua class that can be instantiated as Godot nodes
---@param className string Name of the class to register
---@param classTable table Table containing class methods and properties
---@param baseType string? Base Godot node type (defaults to "Node")
function game.RegisterClass(className, classTable, baseType) end

---Creates a new instance of a registered Lua class
---@generic T
---@param className `T` Name of the registered class or Godot node type
---@return T
function game.CreateNode(className) end

---Binds an existing Godot node to a Lua class
---@param className string Name of the registered class
---@param godotNode Node Godot node to bind to the class
---@return table|nil Returns the bound table or nil if class not found
function game.BindClass(className, godotNode) end

---@param towerId string
---@return TowerConfig
function game.GetTowerConfig(towerId) end

---@param towerId string
---@return Tower
function game.CreateTower(towerId) end

---@param table table
---@return string
function game.TableToJson(table) end

---@param json string
---@return table
function game.JsonToTable(json) end

---@param zombieID string
---@return Zombie
function game.CreateZombie(zombieID) end

---@param className string
---@return userdata
function game.CreateUserdata(className) end

---Registers a Lua class and add to submodules list
---@param className string Name of the class to register
---@param classTable table Table containing class methods and properties
function game.RegisterSubmodule(className, classTable)
    
end