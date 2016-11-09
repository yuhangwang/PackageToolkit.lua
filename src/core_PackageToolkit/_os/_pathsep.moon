M = {}
__ = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split __, ".")[1] 
head = require(root1..".".."._lists._head").head

-- Return the path separator for the current OS
M.pathsep = () ->
    return head split(package.config) 
return M