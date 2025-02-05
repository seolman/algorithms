--[[
1q2w3e4r5t6y
qwerty

1

1ovey0uS2
veS

0
]]
local given = io.read()
local keyword = io.read()
local s = {}

for i = 1, #given do
  if not tonumber(string.sub(given, i, i)) then
    table.insert(s, given:sub(i, i))
  end
end

local find = table.concat(s)
if string.find(find, keyword) then
  print(1)
else
  print(0)
end
