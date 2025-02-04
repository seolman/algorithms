--[[
5 7
0010000
0111010
1111111
0111010
0010000

0000100
0101110
1111111
0101110
0000100
]]
local n, _ = string.match(io.read(), "(%d+) (%d+)")
for _ = 1, n do
  local line = io.read()
  print(string.reverse(line))
end
