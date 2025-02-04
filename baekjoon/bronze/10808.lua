--[[
baekjoon

1 1 0 0 1 0 0 0 0 1 1 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0
]]

local alphabets = {
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
}

---@type string
local word = io.read()
for i = 1, #word do
  local byte = string.byte(string.sub(word, i, i)) - 97 + 1
  alphabets[byte] = alphabets[byte] + 1
end

print(table.concat(alphabets, " "))
