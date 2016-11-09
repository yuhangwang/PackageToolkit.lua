M = {}
__ = ...
case = require __.."._".."case"
TK = require("PackageToolkit")
M.main = () ->
    solution = string.format "a%sb", TK.os.pathsep()
    case.main {"a.b"}, {solution}, "case 1"
return M