funcZ x =
    case x + 1 == 1 of
        True -> "AWESOME" 
        False -> "wut"

pal' xs = 
    case y of
        True -> "yes"
        False -> "no"
    where y = xs == reverse xs

greetIfCool :: String -> IO () 
greetIfCool coolness =
    case cool of 
        True -> 
            putStrLn "eyyyyy. What's shakin'?" 
        False -> 
            putStrLn "pshhhh." 
    where cool = coolness == "downright frosty yo"

functionC x y = if (x > y) then x else y
functionC' x y = 
    case g of 
        True -> x
        False -> y
    where g = x > y


nums x =
    case compare x 0 of
        LT -> -1 
        GT -> 1
        EQ  -> 0