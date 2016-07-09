local M = { }
local name = "test_remove_prefix"
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M[name] = function()
  local solution = "A"
  return case("_A", "_", solution, "case 1")
end
return M
