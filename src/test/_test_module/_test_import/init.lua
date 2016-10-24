local me = ...
local M = { }
local name = "test_import"
local TK = require("PackageToolkit")
local case1 = TK.module.initimport(me, "_case1")
local case2 = TK.module.initimport(me, "_case2")
local case3 = TK.module.initimport(me, "_case3")
M[name] = function()
  case2.run("case 2")
  case1.run("case 1")
  if (TK.module.ipath(me, "m1")) == me .. ".m1" then
    print("module.ipath verified!")
  else
    print("module.ipath not working!")
  end
  return case3.run("test module.path")
end
return M
