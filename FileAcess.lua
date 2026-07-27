---Available in lua/autorun scripts of each mod. Provides sandboxed file read/write.
---@class FileAcess
FileAcess = {}

---Reads a text file.
---@param path string Path using a supported scheme (mod://, modsave://, etc.).
---@return string|nil File contents, or nil if the file does not exist or cannot be opened.
function FileAcess:ReadText(path) end

---Writes text to a file (overwrites existing file). Throws if the path is not writable or the file cannot be opened.
---@param path string Path. Must use mod:// or modsave://.
---@param content string Text to write.
function FileAcess:WriteText(path, content) end

---Checks whether a file exists.
---@param path string Path using a supported scheme.
---@return boolean true if the file exists.
function FileAcess:FileExists(path) end
