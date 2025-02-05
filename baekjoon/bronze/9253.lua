--[[
yeshowmuchiloveyoumydearmotherreallyicannotbelieveit
yeaphowmuchiloveyoumydearmother
howmuchiloveyoumydearmother

YES
]]
local lines = {}
for _ = 1, 3 do
  table.insert(lines, io.read())
end

if string.find(lines[1], lines[3]) and string.find(lines[2], lines[3]) then
  print("YES")
else
  print("NO")
end
