checkTriplet :: Integer -> Integer -> Integer -> Bool
checkTriplet a b c = a*a+b*b==c*c

sumThousand :: Integer
sumThousand = loop inita initb initc
    where 
        inita :: Integer
        inita = 1
        initb :: Integer
        initb = 2
        initc :: Integer
        initc = 3

        loop :: Integer -> Integer -> Integer -> Integer
        loop a b c =
            if shouldLoop
            then 
                if (a+b+c==1000 && (checkTriplet a b c))
                    then finalize a b c
                else
                    loop a b nextc
            else
                if (a+b+1+b+2<=1000)
                    then loop a nextb nextcb
                else
                    if (a+1+a+2+a+3<=1000)
                        then loop nexta nextba nextca
                    else
                        -1
            where
                shouldLoop = a+b+c<=1000
                nexta = a+1
                nextba = a+2
                nextca = a+3
                nextc = c+1
                nextb = b+1
                nextcb = b+2

        finalize :: Integer -> Integer -> Integer -> Integer
        finalize a b c = a*b*c

