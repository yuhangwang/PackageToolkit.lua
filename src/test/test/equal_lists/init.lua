local M = { }
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M.main = function()
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
