local me = ...
print(me)
local M = { }
local TK = require("PackageToolkit")
local m1 = TK.module.import(me, "..", "m1")
M.hello = function()
  return m1.hello()
end
return M
