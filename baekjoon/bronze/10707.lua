--[[
9
100
20
3
10

90

8
300
100
10
250

1800
]]
local a = tonumber(io.read())
local b = tonumber(io.read())
local c = tonumber(io.read())
local d = tonumber(io.read())
local p = tonumber(io.read())

local x = p * a
local y = b
if p > c then y = b + (p - c) * d end
if x > y then print(y) else print(x) end
