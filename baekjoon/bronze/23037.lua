--[[
12345

4425

54748

54748

92727

92727

93084

93084
]]
local num = io.read()
local sum = 0
for i = 1, #num do
  local digit = tonumber(num:sub(i, i))
  sum = sum + (digit ^ 5)
end
print(math.tointeger(sum))
