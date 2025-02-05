--[[
1000 70 170

11

3 2 1

-1

2100000000 9 10

2100000001

고정비용, 가변비용, 가격
손익분기점?

1000 + 70 * x = 170x
]]
local a, b, c = string.match(io.read(), "(%d+) (%d+) (%d+)")
local fixed_cost, variable_cost, price = tonumber(a), tonumber(b), tonumber(c)

if price <= variable_cost then
  print(-1)
else
  local breakeven_point = math.floor(fixed_cost / (price - variable_cost))
  print(breakeven_point + 1)
end
