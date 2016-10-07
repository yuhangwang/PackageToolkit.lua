M = {}
parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
dashed_line = require(root1..".".."._ui._dashed_line")["dashed_line"]
equal_lists = require(root1..".".."._test._equal_lists")["equal_lists"]

M.case = (fn, inputs, solution, msg="") -> 
    print dashed_line 80, '-'
    print msg
    result = fn unpack inputs
    if type(solution) == "table"
        print "Result: ", unpack result
        print "Solution: ", unpack solution
    else
        print "Result: ", result
        print "Solution: ", solution 
    assert equal_lists result, solution
    print "VERIFIED!"
    print dashed_line 80, '-'
    return true
return M