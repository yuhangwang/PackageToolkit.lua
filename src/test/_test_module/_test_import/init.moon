me = ...
M = {}
name = "test_import"
TK = require "PackageToolkit"
case1 = TK.module.import me, "_case1"
case2 = TK.module.import me, "_case2"
M[name] = () ->
    case2.run "case 2"
    case1.run "case 1"
return M