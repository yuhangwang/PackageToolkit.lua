M = {}
__ = ...
name1 = "module"
name2 = "import"
TK = require("PackageToolkit")
M.run = (msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    m = TK[name1][name2] __, "m/m2"
    result = m.hello()
    solution = "hello from m1"
    print "Result: ", result
    assert result == solution
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M

