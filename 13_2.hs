numEqual :: Eq a => a -> [a] -> Int
numEqual x = length . filter (==x)

member :: Eq a => [a] -> a -> Bool
member xs x = (numEqual x xs) > 0
