parent = "core_PackageToolkit"
submodule_names = {
    "lists"
    "strings"
    "module"
    "test"
    "ui"
    "os"
}

M = {}
for name in *submodule_names
    M[name] = require(parent.."._"..name)
return M