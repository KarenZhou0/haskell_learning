myWords :: String -> [String]
myWords "" = []
myWords a = fst x : myWords (drop 1 (snd x))
    where x = span (/=' ') a
 
-- | separate string, space as separator

-- | original way: myWords a = takeWhile (/=' ') a : myWords (drop 1 (dropWhile (/=' ') a))

-- | better way: myWords a = liftA2 (:) fst (myWords. drop 1 . snd) (span(/= ' ') a)