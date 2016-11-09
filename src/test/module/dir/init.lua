local M = { }
local __ = ...
local case = require(__ .. "._" .. "case")
local TK = require("PackageToolkit")
M.main = function()
  local solution = string.format("a%sb", TK.os.pathsep())
  return case.main({
    "a.b"
  }, {
    solution
  }, "case 1")
end
return M
