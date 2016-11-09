M = {}
parent = ...
case = require(parent.."._".."case")["case"]
M.main = () ->
    case {}, {}, true, "case 0"
    case {1,2}, {1,2}, true, "case 1"
    case {{1},2}, {{1},2}, true, "case 2"
    case {1},{1,2}, false, "case 3"
return M