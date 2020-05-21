myWords :: String -> [String]
myWords "" = []
myWords a = takeWhile (/=' ') a : myWords (drop 1 (dropWhile (/=' ') a))