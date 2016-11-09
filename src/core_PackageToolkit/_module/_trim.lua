local M = { }
M.trim = function(path)
  if (string.match(path, "[/\\%.]")) == nil then
    return ""
  else
    return string.match(path, "(.-)[/\\%.]?[^%./\\]+$")
  end
end
return M
