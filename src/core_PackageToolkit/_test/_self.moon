M = {}
-- execute the function with the same name as the inclosing module
M.self = (target_module) ->
    for name, test in pairs(target_module)
        print string.format "ERROR HINT: %s() doesn't exist", name if test[name]== nil
        result = test[name]()
        return false if result == false
    return true
return M