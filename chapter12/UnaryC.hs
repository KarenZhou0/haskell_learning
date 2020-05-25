data UnaryC = UnaryC Int deriving Show

-- | UnaryC has an argument Int, not that it has no argument
-- | but this is wrong: data Unary = Unary a deriving 
-- | Show error: Not in scope: type variable ‘a’
-- | you can’t ordinarily hide polymorphic types from your type constructor

id :: a -> a
id a = a