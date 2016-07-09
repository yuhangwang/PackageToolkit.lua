M = {}
name = "test_test"
parent = ...
members = {
    "test_equal_lists",
}

M[name] = ->
    for test in *members
        require(parent.."._"..test)[test]()

return M