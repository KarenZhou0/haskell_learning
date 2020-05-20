-- | to change the behavior of default compare

data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO () 
reportBoss e e' =
    putStrLn $ show e ++
    " is the boss of " ++ 
    show e'

codersRuleCEOsDrool :: Employee -> Employee -> Ordering
codersRuleCEOsDrool Coder Coder = EQ 
codersRuleCEOsDrool Coder _ = GT 
codersRuleCEOsDrool _ Coder = LT 
codersRuleCEOsDrool e e' = compare e e'

-- | if we dont have codersRuleCEOsDrool we need to follow to listing rule

employeeRank :: ( Employee 
                -> Employee
                -> Ordering ) 
                -> Employee
                -> Employee
                -> IO ()
employeeRank f e e' =
    case f e e' of
        GT -> reportBoss e e'
        EQ -> putStrLn "Neither employee is the boss"
        LT -> (flip reportBoss) e e'

-- | Prelude> employeeRank compare Coder CEO
-- | Prelude> cs = codersRuleCEOsDrool
-- | Prelude> employeeRank cs Coder CEO  result : oder is the boss of CEO


dodgy x y = x + y * 10 
oneIsOne = dodgy 1 
oneIsTwo = (flip dodgy) 2

-- | oneIsTwo 3 = 23
-- | flip dodgy x y = y + x * 10, thus (flip dodgy) 2 = 20 + y