-- Convert a Lua table to a string representation
M = {}
me = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split me, ".")[1] 
tail = require(root1..".".."._lists._tail").tail
head = require(root1..".".."._lists._head").head
append = require(root1..".".."._lists._append").append
get_keys = require(root1..".".."._table._keys").keys

M.str = (t, indent="  ") ->
    add_brackets = (s, prefix) -> string.format "{\n%s%s%s\n%s}", prefix, indent, s, prefix
    
    bracket = (obj) -> 
        if type(obj) == "string" and string.match obj, "%s"
            return string.format "[%s]", obj
        else
            return tostring obj

    quote = (obj) ->
        if type(obj) =="string" and string.match obj, "%s" -- check whether whitespace is found
            return string.format "\"%s\"", obj
        else
            return tostring obj

    format_item = (k, v) ->
        if type(k) == "number"
            return string.format "%s", v
        else
            return string.format "%s = %s", (bracket (quote k)), v

    aux = (dict, keys, accum, prefix) ->
        if #keys == 0
            sep = string.format ",\n%s%s", prefix, indent
            return add_brackets (table.concat accum, sep), prefix
        else
            k = head keys
            v = ""
            if type(dict[k]) == "table"
                v = aux dict[k], (get_keys dict[k]), {}, prefix .. indent
            else
                v = quote dict[k]
            new_item = format_item k, v
            return aux dict, (tail keys), (append accum, new_item), prefix
    return aux t, (get_keys t), {}, ""
return M