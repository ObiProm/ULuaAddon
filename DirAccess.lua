---Available in lua/autorun scripts of each mod. Provides sandboxed directory operations.
---@class DirAccess
DirAccess = {}

---Checks whether a directory exists.
---@param path string Path using a supported scheme (mod://, modsave://, etc.).
---@return boolean true if the directory exists.
function DirAccess.DirExists(path) end

---Creates a directory recursively (like MakeDirRecursive).
---@param path string Path. Must use mod:// or modsave://.
function DirAccess.MakeDir(path) end

---Lists entries in a directory (files and folders).
---@param path string Path using a supported scheme.
---@return table Array of entry names (strings). Empty table if the directory does not exist or cannot be opened.
function DirAccess.ListDir(path) end
