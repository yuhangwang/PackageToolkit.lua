local parent = ...
local members = {
  "root",
  "extract_member",
  "full_name",
  "remove_prefix",
  "require",
  "subfunctions",
  "submodules"
}
local M = { }
for _index_0 = 1, #members do
  local name = members[_index_0]
  M[name] = require(parent .. "._" .. name)[name]
end
return M