local M = { }
local name1 = "module"
local name2 = "dir"
local TK = require("PackageToolkit")
M.main = function(inputs, solutions, msg)
  if msg == nil then
    msg = ""
  end
  print(TK.ui.dashed_line(80, '-'))
  print(string.format("test %s.%s()", name1, name2))
  print(msg)
  local results = TK[name1][name2](unpack(inputs))
  print("Result: ", results)
  if type(results) == 'table' then
    for i = 1, #solutions do
      assert(results[i] == solutions[i])
    end
  else
    assert(results == solutions[1])
  end
  print("VERIFIED!")
  return print(TK.ui.dashed_line(80, '-'))
end
return M
