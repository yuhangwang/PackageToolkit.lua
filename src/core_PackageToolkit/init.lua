local parent = "core_PackageToolkit"
local submodule_names = {
  "lists",
  "strings",
  "module",
  "test",
  "ui"
}
local M = { }
for _index_0 = 1, #submodule_names do
  local name = submodule_names[_index_0]
  M[name] = require(parent .. "._" .. name)
end
return M
