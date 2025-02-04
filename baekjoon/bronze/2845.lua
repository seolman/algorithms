-- 1 10
-- 10 10 10 10 10

-- 0 0 0 0 0

-- 5 20
-- 99 101 1000 0 97

-- -1 1 900 -100 -3

local l, p = string.match(io.read(), "(%d+) (%d+)")
l = tonumber(l)
p = tonumber(p)

local reports = {}
for num in string.gmatch(io.read(), "%d+") do
  table.insert(reports, tonumber(num))
end

local correct = l * p

local result = {}
for _, num in ipairs(reports) do
  table.insert(result, num - correct)
end

print(table.concat(result, " "))
