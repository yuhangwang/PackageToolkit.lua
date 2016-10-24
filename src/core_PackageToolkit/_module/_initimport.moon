M = {}
__ = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split __, ".")[1] 
ipath = require(root1 .. "." .. "._module._ipath")["ipath"]

-- Do relative import form init.lua
M.initimport = (this_path, module_path) ->
    -- 'this_path': the current caller's module path which is captured by "..."
    -- "module_path": path to the target module e.g. "mod1/mod2/mod3"
    err = (string.format "%s\n%s\n", 
            "ERROR HINT: there must be two arguments for initimport, i.e. initimport(..., 'a/b')",
            (string.format "Your input is: initimport(%s, %s)", me, module_path)
          )
    if this_path == nil or module_path == nil 
        print err
        return nil
    else
        return  (require (ipath this_path, module_path))     
return M