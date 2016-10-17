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
local tail = require(root1 .. "." .. "._lists._tail")["tail"]
M.initimport = function(me, module_path)
  local chop
  chop = function(path)
    if (string.match(path, "[/%.]")) == nil then
      return ""
    else
      return string.match(path, "(.-)[/%.]?[^%./]+$")
    end
  end
  local aux
  aux = function(args, prefix)
    if #args == 0 then
      return prefix
    else
      if args[1] == "." then
        return aux((tail(args)), prefix)
      elseif args[1] == ".." then
        return aux((tail(args)), (chop(prefix)))
      else
        if prefix == "" then
          return aux((tail(args)), args[1])
        else
          return aux((tail(args)), (string.format("%s.%s", prefix, args[1])))
        end
      end
    end
  end
  local err = (string.format("%s\n%s\n", "ERROR HINT: there must be two arguments for import/initimport, i.e. (init)import(..., 'a/b')", (string.format("Your input is: (init)import(%s, %s)", me, module_path))))
  if me == nil or module_path == nil then
    print(err)
    return nil
  else
    return (require((aux((split(module_path, "/")), me))))
  end
end
return M
