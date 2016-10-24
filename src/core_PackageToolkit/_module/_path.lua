local M = { }
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
local root1 = (split(..., "."))[1]
local ipath = require(root1 .. "." .. "._module._ipath").ipath
M.path = function(current_module_path, module_path)
  local err = (string.format("%s\n%s\n", "ERROR HINT: there must be two arguments for path, i.e. path(..., 'a/b')", (string.format("Your input is: path(%s, %s)", current_module_path, module_path))))
  local chop
  chop = function(path)
    if (string.match(path, "[/%.]")) == nil then
      return ""
    else
      return string.match(path, "(.-)[/%.]?[^%./]+$")
    end
  end
  if current_module_path == nil or module_path == nil then
    print(err)
    return nil
  else
    return ipath(chop(current_module_path), module_path)
  end
end
return M
