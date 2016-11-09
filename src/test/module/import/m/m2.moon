me = ...
print me
M = {}
TK = require("PackageToolkit")
m1 = TK.module.import me, "m1"
M.hello = () -> m1.hello()
return M