M = {}
name = "test_case"
parent = ...
case = require(parent.."._".."case")["case"]
M[name] = ->
    f = (a,b) -> a+b
    case {f, {1, 1}, 2}, true,"case 0"
return M