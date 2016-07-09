local M = { }
M.require = function(module_name, function_name)
  if function_name == nil then
    return require(module_name)[module_name]
  end
  return require(module_name)[function_name]
end
return M
