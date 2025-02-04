-- 4
-- 6
-- 0

-- 10
-- 21

local function pyramid(n)
  if n <= 1 then
    return 1
  end

  return pyramid(n - 1) + n
end

while true do
  local n = io.read("*n")
  if n == 0 then
    break
  end

  print(pyramid(n))
end
