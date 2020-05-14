checkdiv :: Integer -> Bool
checkdiv a = 
    a `mod` 11 == 0 
    && a `mod` 12 == 0 
    && a `mod` 13 == 0 
    && a `mod` 14 == 0
    && a `mod` 15 == 0
    && a `mod` 16 == 0
    && a `mod` 17 == 0
    && a `mod` 18 == 0
    && a `mod` 19 == 0
    && a `mod` 20 == 0

smallDiv :: Integer
smallDiv = loop initDivider initInd initMax
  where
    initDivider :: Integer
    initDivider = 2
    initInd :: Integer
    initInd = 670442572800
    -- | 670442572800 = 20*...*11
    initMax :: Integer
    initMax = 670442572800

    loop :: Integer -> Integer -> Integer -> Integer
    loop d i max =
      if shouldLoop
      then 
        if (i `mod` d == 0 && checkdiv newi && newi<max)
            then loop nextd i newi
        else
            loop nextd i max
      else finalize d i max
      where
        newi = i `div` d
        shouldLoop = d<=2880
        -- | 2880 = 670442572800/2520/2/19/17/13/11
        nextd = d+1

    finalize :: Integer -> Integer -> Integer -> Integer
    finalize d i max = max

