M = {}
__ = ...

M.main = () ->
    members = {
        -- "full_name",
        -- "remove_prefix"
        -- "import"
        -- "trim" 
        "dir"   
    }

    for m in *[require __.."."..name for name in *members]
        m.main()

return M