elemNum :: Integer -> [Integer] -> Integer
elemNum _ [] = 0
elemNum x (y:ys) = (if x == y then 1 else 0) + elemNum x ys
