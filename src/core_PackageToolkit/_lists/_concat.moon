-- concatenate many lists into one
M = {}
me = ...
split = (str, symbol="%s") -> [x for x in string.gmatch(str, "([^"..symbol.."]+)")]
root1 = (split me, ".")[1] 
concat2 = require(root1..".".."._lists._concat2").concat2
tail = require(root1..".".."._lists._tail").tail

-- concatenate many lists
M.concat = (...) ->
    args = {...}
    aux = (input, accum) ->
        return accum if #input == 0
        return aux (tail input), (concat2 accum, input[1])

    return aux args, {}

return M