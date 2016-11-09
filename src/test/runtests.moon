package.path = package.path..";?/init.lua;"
parent = "test"
catalog = {
    "module",
    -- "test"
}

for m in *[require parent.."."..name for name in *catalog]
    m.main()
