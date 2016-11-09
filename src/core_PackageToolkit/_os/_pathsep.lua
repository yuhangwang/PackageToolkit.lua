local M = { }
local __ = ...
local split
split = function(str, symbol)
  if symbol == nil then
    symbol = "%s"
  end
  local _accum_0 = { }
  local _len_0 = 1
  for x in string.gmatch(str, "([^" .. symbol .. "]+)") do
    _accum_0[_len_0] = x
    _len_0 = _len_0 + 1
  end
  return _accum_0
end
local root1 = (split(__, "."))[1]
local head = require(root1 .. "." .. "._lists._head").head
M.pathsep = function()
  return head(split(package.config))
end
return M
