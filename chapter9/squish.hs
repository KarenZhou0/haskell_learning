squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish (xs)

squishmap :: (a -> [b]) -> [a] -> [b]
squishmap _ [] = []
squishmap f (x:xs) = f x ++ squishmap f xs

squishAgain :: [[a]] -> [a] 
squishAgain a = squishmap (\x->x) a

-- | squish list of lists