mccarthy :: Integral a => a -> a 
mccarthy n
    | n > 100 = n - 10
    | otherwise = mccarthy .mccarthy $ (n + 11)
