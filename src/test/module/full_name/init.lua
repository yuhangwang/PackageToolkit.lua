local M = { }
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M.main = function()
  local solution = "A.B"
  return case("A", "B", solution, "case 1")
end
return M
