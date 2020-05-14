module Fixit1 where

fstString :: [Char] -> [Char]
fstString x = x ++ "in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

exercise :: [Char]
exercise = 
  if (x > y) 
    then fstString x 
  else 
    sndString y
  where x = "Singin"
        y = "Somewhere"