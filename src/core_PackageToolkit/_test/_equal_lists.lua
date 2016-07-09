local parent = ...
local split
split = function(str, symbol)
  if symbol == nil then
    symbol = "%s"
  end
  local _accum_0 = { }
  local _len_0 = 1
  for x in string.gmatch(str, "([^" .. symbol .. "]+)") do
    _accum_0[_len_0] = x
    _len_0 = _len_0 + 1
  end
  return _accum_0
end
local root1 = (split(parent, "."))[1]
local tail = require(root1 .. "." .. "._lists._tail")["tail"]
local head = require(root1 .. "." .. "._lists._head")["head"]
local M = { }
M.equal_lists = function(list1, list2)
  local condition1 = (type(list1)) == 'table'
  local condition2 = (type(list2)) == 'table'
  if condition1 and not condition2 then
    return false
  end
  if condition2 and not condition1 then
    return false
  end
  if (not condition1) and (not condition2) then
    return (list1 == list2)
  end
  if M.equal_lists((head(list1)), (head(list2))) then
    return M.equal_lists((tail(list1)), (tail(list2)))
  else
    return false
  end
end
return M
