local M = { }
local __ = ...
local name1 = "module"
local name2 = "import"
local TK = require("PackageToolkit")
M.run = function(msg)
  if msg == nil then
    msg = ""
  end
  print(TK.ui.dashed_line(80, '-'))
  print(string.format("test %s.%s()", name1, name2))
  print(msg)
  local m = TK[name1][name2](__, "m/m2")
  local result = m.hello()
  local solution = "hello from m1"
  print("Result: ", result)
  assert(result == solution)
  print("VERIFIED!")
  return print(TK.ui.dashed_line(80, '-'))
end
return M
