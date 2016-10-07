M = {}
name = "test_test"
parent = ...
members = {
    "test_equal_lists"
    "test_case"
}

M[name] = ->
    for test in *members
        require(parent.."._"..test)[test]()

return M