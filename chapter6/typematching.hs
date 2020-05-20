operator :: Int -> Float
operator a = x/500
    where x = fromIntegral a:: Float

chk :: Eq b => (a -> b) -> a -> b -> Bool 
chk operator a b = operator (a b)
    where f :: a -> b