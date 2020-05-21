myMaximumBy :: Ord a => (a -> a -> Ordering) -> [a] -> a
myMaximumBy c (s:xs)
    | compare xs [] == EQ = s
    | otherwise = max pastMax s
    where 
        pastMax = myMaximumBy c xs