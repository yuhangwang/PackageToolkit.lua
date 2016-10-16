package.path = package.path .. ";?/init.lua;"
local parent = "test"
local submodule_names = {
  "test_module"
}
for _index_0 = 1, #submodule_names do
  local name = submodule_names[_index_0]
  require(parent .. "._" .. name)[name]()
end
