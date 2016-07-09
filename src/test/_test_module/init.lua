local M = { }
local name = "test_module"
local parent = ...
local members = {
  "test_full_name",
  "test_remove_prefix"
}
M[name] = function()
  for _index_0 = 1, #members do
    local test = members[_index_0]
    require(parent .. "._" .. test)[test]()
  end
end
return M
