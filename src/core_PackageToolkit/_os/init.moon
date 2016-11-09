__ = ...

members = {
    "pathsep",
}
M = {}
for name in *members
    M[name] = require(__.."._"..name)[name]
return M