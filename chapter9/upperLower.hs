import Data.Char

iisUpper :: Char -> Bool 
iisUpper a = elem a "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

ttoUpper :: Char -> Char
ttoUpper a = chr (ord a - 32)

capitalizeF :: String -> String
capitalizeF (x:xs)
    | iisUpper x = x:xs
    | otherwise  = ttoUpper x: xs

capitalizeAll :: String -> String
capitalizeAll "" = ""
capitalizeAll (x:xs) 
    | iisUpper x = x : capitalizeAll xs
    | otherwise  = ttoUpper x : capitalizeAll xs

capAndRet :: String -> Char
capAndRet "" = ' '
capAndRet a 
    | iisUpper x = x
    | otherwise  = ttoUpper x
    where
        x = head a