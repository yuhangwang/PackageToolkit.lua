parent = ...
members = {
    "head",
    "tail",
    "merge",
}

M = {}
for name in *members
    M[name] = require(parent.."._"..name)[name]
return M