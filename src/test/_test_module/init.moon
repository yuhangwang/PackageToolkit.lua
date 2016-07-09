M = {}
name = "test_module"
parent = ...
members = {
    "test_full_name",
    "test_remove_prefix"
}

M[name] = ->
    for test in *members
        require(parent.."._"..test)[test]()

return M