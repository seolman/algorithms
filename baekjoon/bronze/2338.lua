--- 큰 정수 생성 함수
---@param num string
local function bigint(num)
  local obj = {
    sign = "+",
    digits = {},
  }
  if num:sub(1, 1) == "-" then
    obj.sign = "-"
    num = num:sub(2)
  elseif num:sub(1, 1) == "+" then
    num = num:sub(2)
  end

  for i = 1, #num do
    table.insert(obj.digits, tonumber(num:sub(i, i)))
  end

  return obj
end

--- 두 큰 정수의 자릿수를 맞추는 함수
---@param lhs table
---@param rhs table
local function align_digits(lhs, rhs)
  local maxLen = math.max(#lhs.digits, #rhs.digits)
  while #lhs.digits < maxLen do table.insert(lhs.digits, 1, 0) end
  while #rhs.digits < maxLen do table.insert(rhs.digits, 1, 0) end
end

--- 덧셈 함수
---@param big1 string
---@param big2 string
local function sum(big1, big2)
  local lhs = bigint(big1)
  local rhs = bigint(big2)
  local result = bigint("0")
  local carry = 0

  -- 자릿수 맞추기
  align_digits(lhs, rhs)

  -- 오른쪽에서 왼쪽으로 덧셈 수행
  for i = #lhs.digits, 1, -1 do
    local sum = lhs.digits[i] + rhs.digits[i] + carry
    carry = math.floor(sum / 10)
    result.digits[i] = sum % 10
  end

  -- 마지막 carry 처리
  if carry > 0 then
    table.insert(result.digits, 1, carry)
  end

  -- 결과 문자열 생성
  local sign = result.sign
  local digits = table.concat(result.digits)
  return sign .. digits
end

--- 뺄셈 함수
---@param big1 string
---@param big2 string
local function diff(big1, big2)
  local lhs = bigint(big1)
  local rhs = bigint(big2)
  local result = bigint("0")
  local borrow = 0

  -- 자릿수 맞추기
  align_digits(lhs, rhs)

  -- 오른쪽에서 왼쪽으로 뺄셈 수행
  for i = #lhs.digits, 1, -1 do
    local diff = lhs.digits[i] - rhs.digits[i] - borrow
    if diff < 0 then
      diff = diff + 10
      borrow = 1
    else
      borrow = 0
    end
    result.digits[i] = diff
  end

  -- 결과에서 앞쪽의 0 제거
  while #result.digits > 1 and result.digits[1] == 0 do
    table.remove(result.digits, 1)
  end

  -- 결과 문자열 생성
  local sign = result.sign
  local digits = table.concat(result.digits)
  return sign .. digits
end

--- 곱셈 함수
---@param big1 string
---@param big2 string
local function product(big1, big2)
  local lhs = bigint(big1)
  local rhs = bigint(big2)
  local result = bigint("0")
  local maxLen = #lhs.digits + #rhs.digits

  -- 결과 배열 초기화
  result.digits = {}
  for i = 1, maxLen do result.digits[i] = 0 end

  -- 오른쪽에서 왼쪽으로 곱셈 수행
  for i = #lhs.digits, 1, -1 do
    local carry = 0
    for j = #rhs.digits, 1, -1 do
      local product = lhs.digits[i] * rhs.digits[j] + result.digits[i + j] + carry
      carry = math.floor(product / 10)
      result.digits[i + j] = product % 10
    end
    result.digits[i] = carry
  end

  -- 결과에서 앞쪽의 0 제거
  while #result.digits > 1 and result.digits[1] == 0 do
    table.remove(result.digits, 1)
  end

  -- 결과 문자열 생성
  local sign = lhs.sign == rhs.sign and "+" or "-"
  local digits = table.concat(result.digits)
  return sign .. digits
end

-- 입력 받기
local A = io.read() -- 첫 번째 입력 (예: "1")
local B = io.read() -- 두 번째 입력 (예: "-1")

-- 덧셈 결과 출력
local sum_result = sum(A, B)
if sum_result == "+0" or sum_result == "-0" then
  print("0")
else
  local one, two = sum_result:gsub("^+", "")
  print(one)   -- 양수인 경우 "+" 제거
end

-- 뺄셈 결과 출력
local diff_result = diff(A, B)
if diff_result == "+0" or diff_result == "-0" then
  print("0")
else
  local one, two = diff_result:gsub("^+", "")
  print(one)   -- 양수인 경우 "+" 제거
end

-- 곱셈 결과 출력
local product_result = product(A, B)
if product_result == "+0" or product_result == "-0" then
  print("0")
else
  local one, two = product_result:gsub("^+", "")
  print(one)   -- 양수인 경우 "+" 제거
end
