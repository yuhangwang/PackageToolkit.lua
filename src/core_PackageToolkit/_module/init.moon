parent = ...
members = {
    "root"
    "full_name"
    "remove_prefix"
    "require"
    "subfunctions"
    "submodules"
    "import"
    "initimport"
    "ipath"
    "path"
}

M = {}
for name in *members
    M[name] = require(parent.."._"..name)[name]
return M