package.path = package.path .. ";?/init.lua;"
local parent = "test"
local catalog = {
  "module"
}
local _list_0
do
  local _accum_0 = { }
  local _len_0 = 1
  for _index_0 = 1, #catalog do
    local name = catalog[_index_0]
    _accum_0[_len_0] = require(parent .. "." .. name)
    _len_0 = _len_0 + 1
  end
  _list_0 = _accum_0
end
for _index_0 = 1, #_list_0 do
  local m = _list_0[_index_0]
  m.main()
end
