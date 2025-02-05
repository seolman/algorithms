--[[
52 9 16

25 45

7 2 3

3 5

13 7 10

7 10

7 32 47

3 5

11 15 16

7 8
]]
---@type integer, integer, integer
local inch, w, h = string.match(io.read(), "(%d+) (%d+) (%d+)")
local ratio = math.sqrt((inch*inch) / ((w*w) + (h*h)))
print(string.format("%d %d", math.floor(ratio * w), math.floor(ratio * h)))

