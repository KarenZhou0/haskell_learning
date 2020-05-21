myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [x] = x
myMaximumBy c (s:xs) = myMax x (myMaximumBy c xs)
    where myMax a b 
        case c a b of GT -> a; _ -> b

-- | max element of the list