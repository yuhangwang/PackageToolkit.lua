local M = { }
M.remove_prefix = function(str, symbol)
  if symbol == nil then
    symbol = "_"
  end
  local pattern = string.format("^%s+", symbol)
  return string.gsub(str, pattern, "")
end
return M
