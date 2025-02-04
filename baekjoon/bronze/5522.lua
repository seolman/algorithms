-- 1
-- 2
-- 3
-- 4
-- 5

-- 15
local sum = 0
while true do
  local n = io.read("*n")
  if n == nil then
    break
  end
  sum = sum + n
end
print(sum)
