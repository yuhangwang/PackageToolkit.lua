M = {}
M.split = (str, symbol="%s") -> 
    [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
return M