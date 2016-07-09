M = {}
-- extract a member from a module
M.extract_member = (full_module_name, member_name) -> 
    (require full_module_name)[member_name]
return M
