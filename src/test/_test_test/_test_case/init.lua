local M = { }
local name = "test_case"
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M[name] = function()
  local f
  f = function(a, b)
    return a + b
  end
  return case({
    f,
    {
      1,
      1
    },
    2
  }, true, "case 0")
end
return M
