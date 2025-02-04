--[[
31
34
7
151

3
43

316
430
643
1253

44
2

5
10
15
30

1
0
]]

local second = 0
for i = 1, 4 do
  second = second + io.read("*n")
end

print(math.floor(second / 60))
print(second % 60)
