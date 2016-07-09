M = {}
-- remove the module prefix
M.remove_prefix = (str, symbol="_") -> 
    pattern = string.format "^%s+", symbol
    string.gsub str, pattern, ""
return M
