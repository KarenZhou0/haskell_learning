myWords :: String -> [String]
myWords "" = []
myWords a = takeWhile (/=' ') a : myWords (drop 1 (dropWhile (/=' ') a))

myFilter :: String -> [String]
myFilter a = filter (\x -> notElem x ["the", "a", "an"]) (myWords a)
