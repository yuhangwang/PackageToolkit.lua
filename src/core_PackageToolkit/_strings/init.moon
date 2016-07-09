parent = ...
members = {
    "split",
}

M = {}
for name in *members
    M[name] = require(parent.."._"..name)[name]
return M