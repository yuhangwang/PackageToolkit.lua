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
M.import = function(current_module_path, module_path)
  local chop
  chop = function(path)
    if (string.match(path, "[/%.]")) == nil then
      return ""
    else
      return string.match(path, "(.-)[/%.]?[^%./]+$")
    end
  end
  return initimport(chop(current_module_path), module_path)
end
return M
