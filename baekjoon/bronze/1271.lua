local function divide_big_number(n, m)
  local quotient = ""
  local remainder = 0
  local len = #n
  for i = 1, len do
    local digit = tonumber(string.sub(n, i, i))
    remainder = remainder * 10 + digit
    local q = math.floor(remainder / m)
    quotient = quotient .. tostring(q)
    remainder = remainder % m
  end

  quotient = quotient:gsub("^0*", "")
  if quotient == "" then
    quotient = "0"
  end

  return tonumber(quotient), remainder
end
