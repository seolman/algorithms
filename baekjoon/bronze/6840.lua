-- 10
-- 5
-- 8

-- 8

local numbers = {}
while true do
  local n = io.read("*n")
  if n == nil then
    break
  end
  table.insert(numbers, n)
end

table.sort(numbers)
local len = #numbers
print(numbers[math.floor(len/2) + 1])
