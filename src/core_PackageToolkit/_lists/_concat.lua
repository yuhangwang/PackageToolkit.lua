local M = { }
local me = ...
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
local root1 = (split(me, "."))[1]
local concat2 = require(root1 .. "." .. "._lists._concat2").concat2
local tail = require(root1 .. "." .. "._lists._tail").tail
M.concat = function(...)
  local args = {
    ...
  }
  local aux
  aux = function(input, accum)
    if #input == 0 then
      return accum
    end
    return aux((tail(input)), (concat2(accum, input[1])))
  end
  return aux(args, { })
end
return M
