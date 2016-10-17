local me = ...
local M = { }
local name = "test_import"
local TK = require("PackageToolkit")
local case1 = TK.module.initimport(me, "_case1")
local case2 = TK.module.initimport(me, "_case2")
M[name] = function()
  case2.run("case 2")
  return case1.run("case 1")
end
return M
