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
local ipath = require(root1 .. "." .. "._module._ipath")["ipath"]
M.initimport = function(this_path, module_path)
  local err = (string.format("%s\n%s\n", "ERROR HINT: there must be two arguments for initimport, i.e. initimport(..., 'a/b')", (string.format("Your input is: initimport(%s, %s)", me, module_path))))
  if this_path == nil or module_path == nil then
    print(err)
    return nil
  else
    return (require((ipath(this_path, module_path))))
  end
end
return M
