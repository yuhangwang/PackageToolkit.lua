del amalg.cache
lua -lamalg PackageToolkit.lua
lua amalg.lua -s PackageToolkit.lua -c -o ..\release\PackageToolkit.lua
copy ..\release\PackageToolkit.lua ..\..\FunctionalX.lua\src\deps
copy ..\release\PackageToolkit.lua ..\..\luapower
copy ..\release\PackageToolkit.lua ..\..\ioLua\src\deps
copy ..\release\PackageToolkit.lua ..\..\umolflowFramework\src\deps