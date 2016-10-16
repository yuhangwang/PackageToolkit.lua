local M = { }
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
local dashed_line = require(root1 .. "." .. "._ui._dashed_line").dashed_line
local equal_lists = require(root1 .. "." .. "._test._equal_lists").equal_lists
local table2str = require(root1 .. "." .. "._table._str").str
M.case = function(fn, inputs, solutions, msg)
  if msg == nil then
    msg = ""
  end
  print(dashed_line(80, '-'))
  print(msg)
  local results = {
    fn(unpack(inputs))
  }
  print("Results: ", (table2str(results)))
  print("Solutions: ", (table2str(solutions)))
  assert(equal_lists(results, solutions))
  print("VERIFIED!")
  print(dashed_line(80, '-'))
  return true
end
return M
