M = {}
name1 = "module"
name2 = "trim"
TK = require("PackageToolkit")
M.main = (inputs, solutions, msg="") -> 
    print TK.ui.dashed_line 80, '-'
    print string.format "test %s.%s()", name1, name2
    print msg
    results = TK[name1][name2] unpack inputs
    print "Result: ", results
    if type(results) == 'table'
        for i = 1, #solutions
            assert results[i] == solutions[i]
    else
        assert results == solutions[1]
    print "VERIFIED!"
    print TK.ui.dashed_line 80, '-'
return M