--[[
7 3 2 750

3000

60 10 300 1000

1500000
]]
local n, t, c, p = string.match(io.read(), "(%d+) (%d+) (%d+) (%d+)")
print(math.floor((n - 1) / t) * c * p)
