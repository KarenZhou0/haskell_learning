fizzbuzzSum :: Int
fizzbuzzSum = loop initialInd initialSum
  where
    initialInd :: Int
    initialInd = 1
    initialSum :: Int
    initialSum = 0

    loop :: Int -> Int -> Int
    loop i sum =
      if shouldLoop
      then 
        if (0 == i `mod` 3 && 0 == i `mod` 5)
            then loop nextInd nextSum
        else
            loop nextInd sum
      else finalize i sum
      where
        shouldLoop = i <= 1000
        nextInd = i+1
        nextSum = sum+i

    finalize :: Int -> Int -> Int
    finalize a sum = sum
    