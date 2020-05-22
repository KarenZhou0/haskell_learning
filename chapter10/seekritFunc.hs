seekritFunc x =
    div (sum (map length (words x)))
        (length (words x))

-- | sum of length without space / number of words