M = {}
name = "test_full_name"
parent = ...
case = require(parent.."._".."case")["case"]
M[name] = ->
    solution = "A.B"
    case "A", "B", solution, "case 1"
return M