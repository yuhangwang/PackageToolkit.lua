M = {}
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split ..., ".")[1] 
ipath = require(root1..".".."._module._ipath").ipath

-- Return relative path the required module from a regular lua file
M.path = (current_module_path, module_path) -> 
    err = (string.format "%s\n%s\n", 
            "ERROR HINT: there must be two arguments for path, i.e. path(..., 'a/b')",
            (string.format "Your input is: path(%s, %s)", current_module_path, module_path)
          )
    
    chop = (path) -> 
        if (string.match path, "[/%.]") == nil 
            -- if both caller and callee modules live at the root directory
            return ""
        else 
            return string.match path, "(.-)[/%.]?[^%./]+$" -- example "a.b/c.d" => "a.b/c"

    if current_module_path == nil or module_path == nil 
        print err
        return nil
    else 
        return ipath(chop(current_module_path), module_path)
return M