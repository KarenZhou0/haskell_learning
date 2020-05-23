import Data.Char

type Digit = Char
type Presses = Int

data DaPhone = 
    DaPhone Digit Presses
    deriving (Eq, Show)

reverseTaps :: Char -> [(Digit, Presses)]
reverseTaps c 
    | isUpper c = ('*', 1) : reverseTaps (toLower c)
    | elem c "abc" = [('2', ord c - ord 'a' + 1)]
    | elem c "def" = [('3', ord c - ord 'd' + 1)]
    | elem c "ghi" = [('4', ord c - ord 'g' + 1)]
    | elem c "jkl" = [('5', ord c - ord 'j' + 1)]
    | elem c "mno" = [('6', ord c - ord 'm' + 1)]
    | elem c "pqrs" = [('7', ord c - ord 'p' + 1)]
    | elem c "tuv" = [('8', ord c - ord 't' + 1)]
    | elem c "wxyz" = [('9', ord c - ord 'w' + 1)]
    | c == '+' = [('0', 1)]
    | c == '_' = [('0', 2)]
    | c == '.' = [('#', 1)]
    | c == ',' = [('#', 2)]

cellPhonesDead :: String -> [(Digit, Presses)] 
cellPhonesDead [] = []
cellPhonesDead (x:xs) = reverseTaps x ++ (cellPhonesDead xs)

fingerTaps :: [(Digit, Presses)] 
            -> Presses 
fingerTaps l = foldr (\a b -> (snd a) + b) 0 l


convo :: [String] 
convo =
    ["Wanna play 20 questions",
    "Ya",
    "U 1st haha",
    "Lol OK. Have u ever tasted alcohol", "Lol ya",
    "Wow ur cool haha. Ur turn",
    "OK. Do u think I am pretty Lol", "Lol ya",
    "Just making sure rofl ur turn"]




