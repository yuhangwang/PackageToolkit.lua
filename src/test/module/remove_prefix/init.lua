local M = { }
local __ = ...
local case = require(__ .. "._" .. "case")["case"]
M.main = function()
  local solution = "A"
  return case("_A", "_", solution, "case 1")
end
return M
