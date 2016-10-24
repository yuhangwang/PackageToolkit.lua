M = {}
parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
tail = require(root1..".".."._lists._tail")["tail"]

-- Returns the path to the require module
M.ipath = (this_path, module_path) ->
    -- 'this_path': the current caller's module path which is captured by "..."
    -- "module_path": path to the target module e.g. "mod1/mod2/mod3"
    -- user note: if you call this 'import' inside init.lua, make sure prepend thd module_name
    --     by the name of the caller module folder. 
    --     This is because init.lua is a special file. "..." is expanded to 'folder' not 'folder.init'
    

    -- developer's note: ".-" matches any character 0 or more times as few as possible
    -- "(.-)" captures the matching
    -- [^%./] means any character not in the set where "%" is the escaping symbol
    --     i.e, the "." is the literal "."
    -- "+" means 1 or more times
    -- when using "-" the ends must be anchored, that's why the end mark "$" is necessary
    
    -- | remove the last module name in 'path'
    chop = (path) -> 
        if (string.match path, "[/%.]") == nil 
            -- if both caller and callee modules live at the root directory
            return ""
        else 
            return string.match path, "(.-)[/%.]?[^%./]+$" -- example "a.b/c.d" => "a.b/c"
    
    aux = (args, prefix) ->
        if #args == 0
            return prefix
        else
            if args[1] == "."
                return aux (tail args), prefix
            elseif args[1] == ".."
                return aux (tail args), (chop prefix)
            else
                if prefix == ""
                    return aux (tail args), args[1]
                else
                    return aux (tail args), (string.format "%s.%s", prefix, args[1])
    err = (string.format "%s\n%s\n", 
            "ERROR HINT: there must be two arguments for ipath, i.e. ipath(..., 'a/b')",
            (string.format "Your input is: ipath(%s, %s)", this_path, module_path)
          )
    if this_path == nil or module_path == nil 
        print err
        return nil
    else
        return  (aux (split module_path, "/"), this_path)    
return M