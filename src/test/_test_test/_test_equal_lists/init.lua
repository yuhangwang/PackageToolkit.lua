local M = { }
local name = "test_equal_lists"
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M[name] = function()
  case({ }, { }, true, "case 0")
  case({
    1,
    2
  }, {
    1,
    2
  }, true, "case 1")
  case({
    {
      1
    },
    2
  }, {
    {
      1
    },
    2
  }, true, "case 2")
  return case({
    1
  }, {
    1,
    2
  }, false, "case 3")
end
return M
