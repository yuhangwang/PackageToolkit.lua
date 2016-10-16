M = {}
name = "test_module"
parent = ...
members = {
    -- "test_full_name",
    -- "test_remove_prefix"
    "test_import"
}

M[name] = ->
    for test in *members
        require(parent.."._"..test)[test]()

return M