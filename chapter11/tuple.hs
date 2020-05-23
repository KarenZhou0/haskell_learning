import Data.Char

myWords :: String -> [String]
myWords "" = []
myWords a = fst x : myWords (drop 1 (snd x))
    where x = span (/=' ') a

capitalize :: String -> String
capitalize (x:xs)
    | isUpper x = x:xs
    | otherwise  = toUpper x: xs

capitalizeWords :: String -> [(String, String)]
capitalizeWords s 
    = map (\x -> (x, capitalize x)) (myWords s)