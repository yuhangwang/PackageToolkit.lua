-- Return all the (sorted) keys of a table
M = {}
me = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split me, ".")[1] 
concat = require(root1..".".."._lists._concat").concat

M.keys = (t) ->
    strs = {}
    numbers = {}
    others = {}
    for k, v in pairs(t) 
        if type(k) == "number"
            numbers[#numbers+1] = k
        elseif type(k) == "string"
            strs[#strs+1] = k 
        else
            others[#others+1] = k
    table.sort(strs)
    return concat numbers, strs, others
return M