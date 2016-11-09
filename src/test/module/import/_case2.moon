me = ...
M = {}
name1 = "module"
name2 = "import"
TK = require("PackageToolkit")
m = TK[name1][name2] me, "m/../m/./m2"
M.run = (msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    -- intentionally complex import 
    result = m.hello()
    solution = "hello from m1"
    print "Result: ", result
    assert result == solution
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M

