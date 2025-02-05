--[[
2
HAL
SWERC

String #1
IBM

String #2
TXFSD
]]
local n = tonumber(io.read():match("%d+"))
for i = 1, n do
  local word = io.read()

  print(string.format("String #%d", i))

  local hal = {}
  for j = 1, #word do
    local tmp = word:sub(j, j):byte() + 1
    if tmp == 91 then
      tmp = 65
    end
    table.insert(hal, string.char(tmp))
  end
  print(table.concat(hal))
  if i == n then break end
  print()
end
