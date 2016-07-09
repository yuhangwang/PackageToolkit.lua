parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
root2 = (split parent, ".")[2] 
module_root = root1.."."..root2
full_name = require(module_root.."._full_name")["full_name"]
remove_prefix = require(module_root.."._remove_prefix")["remove_prefix"]
tail = require(root1..".".."._lists._tail")["tail"]
merge = require(root1..".".."._lists._merge")["merge"]

M = {}
-- return a new table with all the subfunctions
M.subfunctions = (parent_name, name_list) ->
    return {} if (type name_list) != 'table'
    aux = (name_list, accum) ->
        if #name_list == 0
            return accum
        else
            raw_name = name_list[1]
            bare_name = remove_prefix raw_name, "_"
            full_name = full_name parent_name, raw_name
            m = (require full_name)
            if m == nil
                print "ERROR: cannot import module "..full_name
            else
                return aux (tail name_list), (merge accum, {[bare_name]: m[bare_name]})
                            
    return aux name_list, {}
return M