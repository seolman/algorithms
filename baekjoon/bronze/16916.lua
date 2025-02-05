--[[
baekjoon
aek

1

baekjoon
bak

0

baekjoon
joo

1

baekjoon
oone

0

baekjoon
online

0

baekjoon
baekjoon

1
]]
-- local s = io.read()
-- local sub = io.read()

-- if string.find(s, sub, 1, true) then
--   print(1)
-- else
--   print(0)
-- end

-- KMP 알고리즘을 사용하여 부분 문자열 검색
function kmp_search(text, pattern)
  local n = #text
  local m = #pattern
  local lps = compute_lps(pattern)

  local i = 1   -- text의 인덱스
  local j = 1   -- pattern의 인덱스

  while i <= n do
    if text:sub(i, i) == pattern:sub(j, j) then
      i = i + 1
      j = j + 1

      if j > m then
        return true         -- pattern이 text에 존재
      end
    else
      if j > 1 then
        j = lps[j - 1]
      else
        i = i + 1
      end
    end
  end

  return false   -- pattern이 text에 존재하지 않음
end

-- LPS (Longest Prefix Suffix) 배열 계산
function compute_lps(pattern)
  local m = #pattern
  local lps = {}
  lps[1] = 1

  local len = 1   -- lps의 길이
  local i = 2

  while i <= m do
    if pattern:sub(i, i) == pattern:sub(len, len) then
      len = len + 1
      lps[i] = len
      i = i + 1
    else
      if len > 1 then
        len = lps[len - 1]
      else
        lps[i] = 1
        i = i + 1
      end
    end
  end

  return lps
end

-- 입력 읽기
local S = io.read()
local P = io.read()

-- KMP 알고리즘으로 부분 문자열 검색
if kmp_search(S, P) then
  print(1)
else
  print(0)
end

-- TODO:
