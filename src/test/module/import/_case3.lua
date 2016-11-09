local me = ...
local M = { }
local name1 = "module"
local name2 = "path"
local TK = require("PackageToolkit")
M.chop = function(path)
  if (string.match(path, "[/%.]")) == nil then
    return ""
  else
    return string.match(path, "(.-)[/%.]?[^%./]+$")
  end
end
M.run = function(msg)
  if msg == nil then
    msg = ""
  end
  print(TK.ui.dashed_line(80, '-'))
  print(string.format("test %s.%s()", name1, name2))
  print(msg)
  local result = (TK[name1][name2](me, "m1"))
  local solution = (M.chop(result)) .. ".m1"
  print("Result: ", result)
  assert(result == solution)
  print("VERIFIED!")
  return print(TK.ui.dashed_line(80, '-'))
end
return M
