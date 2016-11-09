M = {}
__ = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split __, ".")[1] 
os = require(root1..".".."._os")

-- replace the "." in the module path by the OS specific path separator
M.dir = (module_path) ->
    return string.gsub module_path, "[.]", os.pathsep()
return M