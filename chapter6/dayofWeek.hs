module Dayofweek where

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun deriving (Ord, Show)

data Date = Date DayOfWeek Int deriving Show

instance Eq DayOfWeek where 
    (==) Mon Mon = True 
    (==) Tue Tue = True 
    (==) Weds Weds = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _     = False


instance Eq Date where
    (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') = 
        weekday == weekday' && dayOfMonth == dayOfMonth'


data Identity a = Identity a deriving Show

instance Eq a => Eq (Identity a) where (==) (Identity v) (Identity v') = v == v'




data StringOrInt 
    = TisAnInt Int 
    | TisAString String
    deriving (Show)

instance Eq StringOrInt where
    TisAnInt a == TisAnInt b = a == b
    TisAString a == TisAString b = a == b
    _ == _ = False

