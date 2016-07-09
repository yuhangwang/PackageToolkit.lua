M = {}
-- Return a dashed line string
M.dashed_line = (n, symbol="-") ->
    aux = (n, symbol, accum) ->
        if n == 0
            return accum
        else
            return aux (n-1), symbol, accum..symbol
    return aux n, symbol, ""
return M