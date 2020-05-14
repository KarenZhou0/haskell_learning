fibEvenSum :: Int
fibEvenSum = loop prev curr initialSum
  where
    prev :: Int
    prev = 1
    curr :: Int
    curr = 2
    initialSum :: Int
    initialSum = 0

    loop :: Int -> Int -> Int -> Int
    loop pi ci sum =
      if shouldLoop
      then 
        if (0 == ci `mod` 2)
            then loop ci nexti nextSum
        else
            loop ci nexti sum
      else finalize pi ci sum
      where
        shouldLoop = ci <= 4000000
        nexti = ci+pi
        nextSum = sum+ci

    finalize :: Int -> Int -> Int -> Int
    finalize a b sum = sum