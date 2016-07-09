parent = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split parent, ".")[1] 
tail = require(root1..".".."._lists._tail")["tail"]
head = require(root1..".".."._lists._head")["head"]

M = {}

-- check whether two list or nested lists are equal
M.equal_lists = (list1, list2) ->
    condition1 = (type list1) == 'table'
    condition2 = (type list2) == 'table'
    return false if condition1 and not condition2
    return false if condition2 and not condition1
    return (list1 == list2) if (not condition1) and (not condition2)
    -- Now, both inputs are lists
    return false if #list1 != #list2
    return true  if #list1 == 0 and #list2 == 0
    if M.equal_lists (head list1), (head list2)
        return M.equal_lists (tail list1), (tail list2)
    else
        return false
return M