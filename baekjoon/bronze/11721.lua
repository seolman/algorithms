--[[
BaekjoonOnlineJudge

BaekjoonOn
lineJudge

OneTwoThreeFourFiveSixSevenEightNineTen

OneTwoThre
eFourFiveS
ixSevenEig
htNineTen
]]
---@type string
local word = io.read()
local start = 1
while start <= #word do
  local end_pos = start + 9
  local chunk = string.sub(word, start, end_pos)
  print(chunk)
  start = start + 10
end
