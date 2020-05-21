zzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zzipWith _ [] [] = []
zzipWith _ _ [] = []
zzipWith _ [] _ = []
zzipWith f (x:xs) (y:ys) = (f x y): (zzipWith f xs ys)


zzip :: [a] -> [b] -> [(a,b)]
zzip [] [] = []
zzip _ [] = []
zzip [] _ = []
zzip (x:xs) (y:ys) = (x,y): (zzip xs ys)