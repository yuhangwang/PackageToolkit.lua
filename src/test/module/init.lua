local M = { }
local __ = ...
M.main = function()
  local members = {
    "import",
    "trim"
  }
  local _list_0
  do
    local _accum_0 = { }
    local _len_0 = 1
    for _index_0 = 1, #members do
      local name = members[_index_0]
      _accum_0[_len_0] = require(__ .. "." .. name)
      _len_0 = _len_0 + 1
    end
    _list_0 = _accum_0
  end
  for _index_0 = 1, #_list_0 do
    local m = _list_0[_index_0]
    m.main()
  end
end
return M
