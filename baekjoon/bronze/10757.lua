local function add_big_number(a, b)
  local len_a = #a
  local len_b = #b
  if len_a < len_b then
    a = string.rep("0", len_b -len_a) .. a
  else
    b = string.rep("0", len_a - len_b) .. b
  end

  local result = {}
  local carry = 0
  local len = #a
  for i = len, 1, -1 do
    local digit_a = tonumber(string.sub(a, i, i))
    local digit_b = tonumber(string.sub(b, i, i))
    local sum = digit_a + digit_b + carry
    carry = math.floor(sum / 10)
    table.insert(result, 1, tostring(sum % 10))
  end

  if carry > 0 then
    table.insert(result, 1, tostring(carry))
  end

  return table.concat(result)
end

local input = io.read()
local numbers = {}
for num in input:gmatch("%S+") do
  table.insert(numbers, num)
end

local a, b = numbers[1], numbers[2]
local result = add_big_number(a, b)
print(result)
