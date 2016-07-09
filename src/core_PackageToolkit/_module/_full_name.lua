local M = { }
M.full_name = function(parent, name)
  return string.format("%s.%s", parent, name)
end
return M
