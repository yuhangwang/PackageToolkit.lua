local M = { }
M.self = function(target_module)
  for name, test in pairs(target_module) do
    if test[name] == nil then
      print(string.format("ERROR HINT: %s() doesn't exist", name))
    end
    local result = test[name]()
    if result == false then
      return false
    end
  end
  return true
end
return M
