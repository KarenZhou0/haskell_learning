import Data.Maybe

data Nat =
    Zero
    | Succ Nat
    deriving (Eq, Show)

natToInteger :: Nat -> Integer 
natToInteger a
    | a == Zero = 0
    | otherwise = 1 + natToInteger x
    where Succ x = a

integerToNat :: Integer -> Maybe Nat 
integerToNat a
    | a < 0 = Nothing
    | a == 0 = Just Zero
    | otherwise = Just (Succ (fromJust (integerToNat (a-1))))

