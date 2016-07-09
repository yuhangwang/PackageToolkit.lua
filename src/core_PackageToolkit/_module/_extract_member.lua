local M = { }
M.extract_member = function(full_module_name, member_name)
  return (require(full_module_name))[member_name]
end
return M
