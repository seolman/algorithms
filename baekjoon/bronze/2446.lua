--[[
5

*********
 *******
  *****
   ***
    *
   ***
  *****
 *******
*********
]]
local n = io.read("*n")
for i = 1, n do
  io.write(string.rep(" ", i - 1))
  print(string.rep("*", 2 * (n - i + 1) - 1))
end
for i = 2, n do
  io.write(string.rep(" ", n - i))
  print(string.rep("*", 2 * i - 1))
end
