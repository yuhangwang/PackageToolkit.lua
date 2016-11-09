M = {}
parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
tail = require(root1..".".."._lists._tail").tail
initimport = require(root1..".".."._module._initimport").initimport
trim = require(root1..".".."._module._trim").trim

M.import = (current_module_path, module_path) -> 
    err = (string.format "%s\n%s\n", 
            "ERROR HINT: there must be two arguments for import, i.e. import(..., 'a/b')",
            (string.format "Your input is: import(%s, %s)", current_module_path, module_path)
          )
    if current_module_path == nil or module_path == nil 
        print err
        return nil
    else 
        return initimport(trim(current_module_path), module_path)
return M