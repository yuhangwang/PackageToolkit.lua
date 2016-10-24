me = ...
M = {}
name1 = "module"
name2 = "path"
TK = require("PackageToolkit")

M.chop = (path) -> 
        if (string.match path, "[/%.]") == nil 
            -- if both caller and callee modules live at the root directory
            return ""
        else 
            return string.match path, "(.-)[/%.]?[^%./]+$" -- example "a.b/c.d" => "a.b/c"

M.run = (msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    -- intentionally complex import 
    result = (TK[name1][name2] me, "m1")
    solution = (M.chop result) .. ".m1"
    print "Result: ", result
    assert result == solution
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M

