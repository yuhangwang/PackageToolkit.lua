M = {}
__ = ...
TK = require "PackageToolkit"
case1 = TK.module.initimport __, "_case1"
case2 = TK.module.initimport __, "_case2"
case3 = TK.module.initimport __, "_case3"
M.main = () ->
    case2.run "case 2"
    case1.run "case 1"

    -- test module.ipath
    if (TK.module.ipath __, "m1") == __ .. ".m1"
        print (TK.module.ipath __, "m1")
        print "module.ipath verified!"
    else
        print "module.ipath not working!"

    case3.run "test module.path"

return M