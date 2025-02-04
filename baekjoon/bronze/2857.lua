--[[
N-FBI1
9A-USKOK
I-NTERPOL
G-MI6
RF-KGB1

1

N321-CIA
F3-B12I
F-BI-12
OVO-JE-CIA
KRIJUMCAR1

HE GOT AWAY!

47-FBI
BOND-007
RF-FBI18
MARICA-13
13A-FBILL

1 3 5
]]
local fbi = {}
for i = 1, 5 do
  if string.find(io.read(), "FBI") then
    table.insert(fbi, i)
  end
end

if #fbi == 0 then
  print("HE GOT AWAY!")
else
  print(table.concat(fbi, " "))
end
