local M = { }
local name = "test_case"
local parent = ...
local case = require(parent .. "._" .. "case")["case"]
M[name] = function()
  local f
  f = function(a, b)
    return a + b
  end
  case({
    f,
    {
      1,
      1
    },
    {
      2
    }
  }, true, "case 0")
  local f2
  f2 = function(a, b)
    return {
      a,
      b
    }
  end
  return case({
    f2,
    {
      1,
      2
    },
    {
      {
        1,
        2
      }
    }
  }, true, "case 1")
end
return M
