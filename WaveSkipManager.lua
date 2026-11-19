---@class WaveSkipManager : Control
---@field AoeButton Button
---@field VetoButton Button
---@field TeamVoteState Label
---@field AllTeamsVoteState Label
---@field TeamVoteStateBG Control
---@field AllTeamsVoteStateBG Control
---@field CurrentRoom Room
---@field OnWaveSkip LuaEvent
local WaveSkipManager = {}

---@param voted integer
---@param max integer
function WaveSkipManager:SetTeamVoteState(voted, max) end

---@param voted integer
---@param max integer
function WaveSkipManager:SetAllTeamsVoteState(voted, max) end

---@param text string
function WaveSkipManager:SetTeamTooltip(text) end

---@param text string
function WaveSkipManager:SetAllTeamsTooltip(text) end

---@param waveParser table
function WaveSkipManager:Initialize(waveParser) end

---@param isAgree boolean
function WaveSkipManager:SendVote(isAgree) end

function WaveSkipManager:ClientStartSkipVote() end

function WaveSkipManager:ClientEndSkipVote() end

---@param data table<string, table<integer, boolean>>
function WaveSkipManager:ClientRecieveVoteState(data) end

---@param isAgree boolean
function WaveSkipManager:ServerVoteRequest(isAgree) end

function WaveSkipManager:SkipWave() end

---@return boolean
function WaveSkipManager:IsSkipped() end

function WaveSkipManager:ResetVote() end
