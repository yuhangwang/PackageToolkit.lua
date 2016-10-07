local M = { }
local name1 = "test"
local name2 = "case"
local TK = require("PackageToolkit")
M.case = function(inputs, solution, msg)
  if msg == nil then
    msg = ""
  end
  print(TK.ui.dashed_line(80, '-'))
  print(string.format("test %s.%s()", name1, name2))
  print(msg)
  local result = TK[name1][name2](unpack(inputs))
  print("Result: ", result)
  print("Solution: ", solution)
  assert(result == solution)
  print("VERIFIED!")
  return print(TK.ui.dashed_line(80, '-'))
end
return M
