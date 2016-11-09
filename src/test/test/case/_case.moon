M = {}
name1 = "test"
name2 = "case"
TK = require("PackageToolkit")
M.case = (inputs, solution, msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    result = TK[name1][name2] unpack inputs
    print "Result: ", result
    print "Solution: ", solution
    assert result == solution
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M