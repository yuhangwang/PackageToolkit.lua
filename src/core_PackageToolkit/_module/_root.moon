M = {}
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
M.root = (full_module_name) ->
  return (split full_module_name, ".")[1] or ""
return M