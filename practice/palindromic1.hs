import Control.Monad

checkPa :: Int -> Bool
checkPa a = reversal a == a

reversal :: Int -> Int
reversal a = read . reverse . show $ a

maxPa :: Int
maxPa = 
    sum $ do
        i <- [100 .. 999]
        j <- [100 .. 999]
        guard (checkPa i*j)
        pure i
        pure j