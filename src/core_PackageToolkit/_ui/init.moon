parent = ...
submodule_names = {
    "_dashed_line"
}

M = {}
for name in *submodule_names
    M[name] = require(parent.."."..name)
return M