local M = { }
local name = "test_full_name"
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M[name] = function()
  local solution = "A.B"
  return case("A", "B", solution, "case 1")
end
return M
