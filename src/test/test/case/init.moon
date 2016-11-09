M = {}
__ = ...
case = require(__.."._".."case")["case"]
M.main =  () ->
    f = (a,b) -> a+b
    case {f, {1, 1}, {2}}, true,"case 0"
    f2 = (a,b) -> {a,b}
    case {f2, {1,2}, {{1,2}}}, true, "case 1"
    f2 = (a,b) -> a, b
    case {f2, {1,2}, {1,2}}, true, "case 2"
return M