M = {}
__ = ...
case = require __.."._".."case"
M.main = () ->
    case.main {"a/b/c"}, {"a/b"}, "case 1"
    case.main {"a\\b\\c"}, {"a\\b"}, "case 2"
return M