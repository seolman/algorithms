-- 4
-- -100 100
-- 2 3
-- 0 110101
-- -1000000000 1

-- 0
-- 5
-- 110101
-- -999999999

local n = tonumber(io.read())

for _ = 1, n do
  ---@type string
  local line = io.read()
  local x_str, y_str = line:match("(-?%d+)%s+(-?%d+)")
  local x = tonumber(x_str)
  local y = tonumber(y_str)
  print(x + y)
end
