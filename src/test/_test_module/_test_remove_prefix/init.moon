M = {}
name = "test_remove_prefix"
parent = ...
case = require(parent.."._".."case")["case"]
M[name] = ->
    solution = "A"
    case "_A", "_", solution, "case 1"
return M