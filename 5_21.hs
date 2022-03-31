import Prelude hiding ( elem )

matches :: Integer -> [Integer] -> [Integer]
matches n xs = [x | x <- xs, n == x]

elem :: Integer -> [Integer] -> Bool
elem n xs
 | ((matches n xs) /= []) = True
 | otherwise              = False