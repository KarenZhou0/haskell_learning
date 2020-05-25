myWords :: String -> [String]
myWords "" = []
myWords a = fst x : myWords (drop 1 (snd x))
    where x = span (/=' ') a

notThe :: String -> Maybe String 
notThe s = Just (foldr (\a b -> if a == "the" then b else a++b) [] (myWords s))

replaceThe :: String -> String
replaceThe s = foldr (\a b -> if a == "the" then "a"++b else a++b) [] (myWords s)


