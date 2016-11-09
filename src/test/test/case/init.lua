local M = { }
local __ = ...
local case = require(__ .. "._" .. "case")["case"]
M.main = function()
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
  case({
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
  f2 = function(a, b)
    return a, b
  end
  return case({
    f2,
    {
      1,
      2
    },
    {
      1,
      2
    }
  }, true, "case 2")
end
return M
