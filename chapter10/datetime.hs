import Data.Time
import Data.Typeable

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)
theDatabase :: [DatabaseItem] 
theDatabase =
    [ 
    DbDate (UTCTime
                (fromGregorian 1911 5 1)
                (secondsToDiffTime 34123)), 
    DbNumber 9001,
    DbNumber 9002,
    DbString "Hello, world!",
    DbDate (UTCTime
                (fromGregorian 1921 5 1)
                (secondsToDiffTime 34123))
    ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate [] = []
filterDbDate (DbDate x:xs) = x : filterDbDate xs
filterDbDate (_:xs) = filterDbDate xs

-- | type check

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent a = foldr max init (filterDbDate a)
    where init = UTCTime (fromGregorian 1000 5 1)(secondsToDiffTime 34123)

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber [] = []
filterDbNumber (DbNumber x:xs) = x : filterDbNumber xs
filterDbNumber (_:xs) = filterDbNumber xs

avgDb :: [DatabaseItem] -> Double
avgDb a = fromIntegral ( (foldr (+) 0 filtered) `div` toInteger (length filtered) )
    where filtered = filterDbNumber a