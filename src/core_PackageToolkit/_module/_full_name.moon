M = {}
-- return the full module name with qualifier prefix
M.full_name = (parent, name) -> 
    string.format("%s.%s", parent, name)
return M