local parent = ...
local members = {
  "self",
  "equal_lists",
  "case"
}
local M = { }
for _index_0 = 1, #members do
  local name = members[_index_0]
  M[name] = require(parent .. "._" .. name)[name]
end
return M
