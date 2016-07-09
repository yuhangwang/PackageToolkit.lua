local parent = ...
local submodule_names = {
  "dashed_line"
}
local M = { }
for _index_0 = 1, #submodule_names do
  local name = submodule_names[_index_0]
  M[name] = require(parent .. "._" .. name)[name]
end
return M
