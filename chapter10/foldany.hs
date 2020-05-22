myElem1 :: Eq a => a -> [a] -> Bool
myElem1 a = foldr (\b c -> a == b || c) False


myElem2 :: Eq a => a -> [a] -> Bool
myElem2 a = any (a==)

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myMap :: (a->b) -> [a] -> [b]
myMap f =  foldr (\a b-> f a : b) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\a b -> if f a then a:b else b) []

squish :: [[a]] -> [a]
squish = foldr (++) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\a b -> f a ++ b) []

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f l = foldr (\a b -> if f a b == GT then a else b) (last l) l

