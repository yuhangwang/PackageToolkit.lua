parent = ...
members = {
    "self",
    "equal_lists"
    "case"
}

M = {}
for name in *members
    M[name] = require(parent.."._"..name)[name]
return M