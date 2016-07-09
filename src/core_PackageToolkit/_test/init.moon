parent = ...
members = {
    "self",
    "equal_lists"
}

M = {}
for name in *members
    M[name] = require(parent.."._"..name)[name]
return M