--[[
3

22

1

5

19

590
]]
local n = tonumber(io.read():match("(%d+)"))
local tmp = math.floor((1 + n) * n / 2)
print((tmp * 3 + n + 1) % 45678)
