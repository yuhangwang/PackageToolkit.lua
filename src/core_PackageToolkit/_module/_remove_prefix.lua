local M = { }
M.remove_prefix = function(str, symbol)
  return string.gsub(str, "^_+", "")
end
return M
