local M = { }
local name1 = "module"
local name2 = "remove_prefix"
local TK = require("PackageToolkit")
M.case = function(input1, input2, solution, msg)
  if msg == nil then
    msg = ""
  end
  print(TK.ui.dashed_line(80, '-'))
  print(string.format("test %s.%s()", name1, name2))
  print(msg)
  local result = TK[name1][name2](input1, input2)
  print("Result: ", result)
  assert(result == solution)
  print("VERIFIED!")
  return print(TK.ui.dashed_line(80, '-'))
end
return M
