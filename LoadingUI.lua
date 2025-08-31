---@class LoadingUI
LoadingUI = {}

--- Sets the progress bar value (0–100).
---@param number number
function LoadingUI.SetPercentage(number) end

--- Updates the loading status text.
---@param text string
function LoadingUI.SetStatus(text) end

--- Shows the loading UI by playing the animation forward.
function LoadingUI.Show() end

--- Hides the loading UI by playing the animation backwards.
function LoadingUI.Hide() end