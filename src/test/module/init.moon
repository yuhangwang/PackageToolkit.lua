M = {}
__ = ...

M.main = () ->
    members = {
        -- "full_name",
        -- "remove_prefix"
        "import"
        "trim"    
    }

    for m in *[require __.."."..name for name in *members]
        m.main()

return M