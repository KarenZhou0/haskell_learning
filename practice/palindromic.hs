checkPa :: Int -> Bool
checkPa a = reversal a == a

reversal :: Int -> Int
reversal a = read . reverse . show $ a

maxPa :: Int
maxPa = loop initI initJ initMax
  where
    initI :: Int
    initI = 100
    initJ :: Int
    initJ = 100
    initMax :: Int
    initMax = 0

    loop :: Int -> Int -> Int -> Int
    loop i j max =
      if shouldLoop
      then 
        if (checkPa nextmax && nextmax > max)
            then 
                if (nextj == 1000) 
                    then loop nexti 100 nextmax
                else
                    loop i nextj nextmax
        else
            if (nextj == 1000) 
                then loop nexti 100 max
            else
                loop i nextj max
      else 
        finalize i j max
      where
        shouldLoop = i < 1000 && j < 1000
        nexti = i+1
        nextj = j+1
        nextmax = i*j

    finalize :: Int -> Int -> Int -> Int
    finalize a b max = max
    