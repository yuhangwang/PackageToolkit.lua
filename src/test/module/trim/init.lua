local M = { }
local __ = ...
local case = require(__ .. "._" .. "case")
M.main = function()
  case.main({
    "a/b/c"
  }, {
    "a/b"
  }, "case 1")
  return case.main({
    "a\\b\\c"
  }, {
    "a\\b"
  }, "case 2")
end
return M
