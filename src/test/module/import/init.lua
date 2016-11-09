local M = { }
local __ = ...
local TK = require("PackageToolkit")
local case1 = TK.module.initimport(__, "_case1")
local case2 = TK.module.initimport(__, "_case2")
local case3 = TK.module.initimport(__, "_case3")
M.main = function()
  case2.run("case 2")
  case1.run("case 1")
  if (TK.module.ipath(__, "m1")) == __ .. ".m1" then
    print((TK.module.ipath(__, "m1")))
    print("module.ipath verified!")
  else
    print("module.ipath not working!")
  end
  return case3.run("test module.path")
end
return M
