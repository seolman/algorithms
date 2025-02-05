--[[
4
1 1234
2 9
3 1777
4 129

1 668 1234 4660
2 0 9 9
3 1023 1777 6007
4 0 129 297
]]
local function is_octal(s)
  for i = 1, #s do
    local c = s:sub(i, i)
    if not (c >= '0' and c <= '7') then
      return false
    end
  end
  return true
end


local function to_octal(s)
  if is_octal(s) then
    return tonumber(s, 8)
  else
    return 0
  end
end

local T = tonumber(io.read())

for _ = 1, T do
  local K, s = io.read():match("(%d+)%s+(%S+)")
  local octal = to_octal(s)
  local decimal = tonumber(s)
  local hex = tonumber(s, 16)
  print(K .. " " .. octal .. " " .. decimal .. " " .. hex)
end
