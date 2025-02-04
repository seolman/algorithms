-- 1 100
-- 2 7
-- 10 9
-- 10 10

-- local input = io.read("*a")

-- local tokens = {}
-- for num in input:gmatch('%d+') do
--   table.insert(tokens, num)
-- end

-- local i = 1
-- while i <= #tokens do
--   local N = tonumber(tokens[i])
--   local S = tonumber(tokens[i + 1])
--   local x = math.floor(S / (N + 1))
--   print(x)
--   i = i + 2
-- end

local line
while true do
  line = io.read()
  if line == nil then
    break
  end

  local n, s = line:match("(%d+) (%d+)")
  print(math.floor(s / (n + 1)))
end
