isSublist, isSubsequence :: (Eq a) => [a] -> [a] -> Bool

isSublist [] _ = True
isSublist (x:xs) (y:ys)
 | x == y           = (isSublist xs ys)
 | otherwise        = (isSublist (x:xs) ys)
isSublist _ _ = False

isSubsequence [] _ = False
isSubsequence _ [] = False
isSubsequence xs ys
 | xs == ys  = True
 | otherwise = isSubsequence xs (init ys) || isSubsequence xs (tail ys)