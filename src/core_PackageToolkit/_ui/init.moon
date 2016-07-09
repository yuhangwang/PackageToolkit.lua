parent = ...
submodule_names = {
    "dashed_line"
}

M = {}
for name in *submodule_names
    M[name] = require(parent.."._"..name)[name]
return M