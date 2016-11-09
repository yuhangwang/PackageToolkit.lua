local M = { }
local parent = ...
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
local root1 = (split(parent, "."))[1]
local tail = require(root1 .. "." .. "._lists._tail").tail
local initimport = require(root1 .. "." .. "._module._initimport").initimport
local trim = require(root1 .. "." .. "._module._trim").trim
M.import = function(current_module_path, module_path)
  local err = (string.format("%s\n%s\n", "ERROR HINT: there must be two arguments for import, i.e. import(..., 'a/b')", (string.format("Your input is: import(%s, %s)", current_module_path, module_path))))
  if current_module_path == nil or module_path == nil then
    print(err)
    return nil
  else
    return initimport(trim(current_module_path), module_path)
  end
end
return M
