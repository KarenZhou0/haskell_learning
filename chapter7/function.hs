myNum :: Integer
myNum = 1
myVal f = myNum

addOneIfOdd n = case odd n of 
    True -> f n
    False -> n
    where f = \n -> n + 1


addFive = \x -> \y -> (if x > y then y else x) + 5

mflip f x y = f y x

-- | *Main> :t mflip
-- | mflip :: (t1 -> t2 -> t3) -> t2 -> t1 -> t3

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f a == b

-- | e.g. chk(+1) 3 5