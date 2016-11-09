M = {}
__ = ...

M.main = () ->
    members = {
        "equal_lists"
        "case"
    }

    for m in *[require __.."."..name for name in *members]
        m.main()

return M