local parent = ...
local members = {
  "root",
  "full_name",
  "remove_prefix",
  "require",
  "subfunctions",
  "submodules",
  "trim",
  "import",
  "initimport",
  "ipath",
  "path",
  "dir"
}
local M = { }
for _index_0 = 1, #members do
  local name = members[_index_0]
  M[name] = require(parent .. "._" .. name)[name]
end
return M
