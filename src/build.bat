del amalg.cache
lua -lamalg PackageToolkit.lua
lua amalg.lua -s PackageToolkit.lua -c -o ..\release\PackageToolkit.lua
copy ..\release\PackageToolkit.lua ..\..\FunctionalX.lua\src