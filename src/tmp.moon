chop = (path) -> 
        if (string.match path, "[/\\%.]") == nil 
            -- if both caller and callee modules live at the root directory
            return ""
        else 
            return string.match path, "(.-)[/\\%.]?[^%./\\]+$" -- example "a.b/c.d" => "a.b/c"
    
print chop "a/b/c"
print chop "a\\b\\c"