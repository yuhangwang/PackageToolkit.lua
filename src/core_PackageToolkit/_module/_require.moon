M = {}
-- return the function inside a module with the same name
M.require = (module_name, function_name) -> 
    return require(module_name)[module_name] if function_name == nil
    return require(module_name)[function_name]
return M