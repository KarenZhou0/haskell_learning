leng :: [a] -> Integer
leng [] = 0
leng (_:xs) = 1 + leng xs

-- | The colon is the cons operator. 
-- | (x:xs) matches the first item of a list as x, 
-- | and the rest of the list as xs. Since your function doesn't 
-- | use the first item in the list, it ignores it using the underscore.

itIsMystery xs = map (\x -> elem x "aeiou") xs