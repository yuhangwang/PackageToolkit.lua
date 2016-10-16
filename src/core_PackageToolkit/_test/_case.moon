M = {}
parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
dashed_line = require(root1..".".."._ui._dashed_line").dashed_line
equal_lists = require(root1..".".."._test._equal_lists").equal_lists
table2str = require(root1..".".."._table._str").str

M.case = (fn, inputs, solutions, msg="") ->
    -- solutions must be wrapped inside a list "{}" 
    print dashed_line 80, '-'
    print msg
    results = {(fn unpack inputs)} -- allow multiple returns

    print "Results: ", (table2str results)
    print "Solutions: ", (table2str solutions)

    assert equal_lists results, solutions
    print "VERIFIED!"
    print dashed_line 80, '-'
    return true
return M