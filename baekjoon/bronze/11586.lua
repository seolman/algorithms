--[[
8
OOOOOOOO
OKKOOEEO
OKKOOEEO
OOOSSOOO
OOOSSOOO
OAOOOOAO
OOAAAAOO
OOOOOOOO
3

OOOOOOOO
OOAAAAOO
OAOOOOAO
OOOSSOOO
OOOSSOOO
OKKOOEEO
OKKOOEEO
OOOOOOOO
]]
local n = tonumber(io.read())
local lines = {}
for _ = 1, n do
  table.insert(lines, io.read())
end
local state = tonumber(io.read())

if state == 1 then -- default
  for _, value in ipairs(lines) do
    print(value)
  end
elseif state == 2 then -- left,right
  for _, value in ipairs(lines) do
    print(string.reverse(value))
  end
elseif state == 3 then -- up, down
  for i = #lines, 1, -1 do
    print(lines[i])
  end
end
