dropUntil :: (a -> Bool) -> [a] -> [a]
dropUntil p [] = []
dropUntil p (x:xs)
 | p x       = x:xs
 | otherwise = dropUntil p xs