me = ...
M = {}
name = "test_import"
TK = require "PackageToolkit"
case1 = TK.module.initimport me, "_case1"
case2 = TK.module.initimport me, "_case2"
case3 = TK.module.initimport me, "_case3"
M[name] = () ->
    case2.run "case 2"
    case1.run "case 1"

    -- test module.ipath
    if (TK.module.ipath me, "m1") == me .. ".m1"
        print "module.ipath verified!"
    else
        print "module.ipath not working!"

    case3.run "test module.path"

return M