squareIntegers :: [Integer] -> [Integer]
squareIntegers ns = map (^2) ns

sumSquareIntegers :: [Integer] -> Integer
sumSquareIntegers ns = foldr (+) 0 (squareIntegers ns)

isGreaterZeroIntegers :: [Integer] -> Bool
isGreaterZeroIntegers ns = (filter (<=0) ns) == []
