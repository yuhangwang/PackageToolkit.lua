M = {}
-- remove the module prefix
M.remove_prefix = (str, symbol) -> 
    string.gsub(str, "^_+", "")
return M
