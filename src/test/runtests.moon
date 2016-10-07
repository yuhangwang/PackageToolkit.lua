package.path = package.path..";?/init.lua;"
parent = "test"
submodule_names = {
    -- "test_module",
    "test_test",
}

for name in *submodule_names
    require(parent.."._"..name)[name]()
