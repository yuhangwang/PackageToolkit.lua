M = {}
name1 = "module"
name2 = "full_name"
TK = require("PackageToolkit")
M.case = (input1, input2, solution, msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    result = TK[name1][name2] input1, input2
    print "Result: ", result
    assert result == solution
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M