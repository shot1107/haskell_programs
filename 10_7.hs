minApplied0_N :: (Integer -> Integer) -> Integer -> Integer
minApplied0_N f n = minimum (map f [0..n])

isEqualApplied0_N :: (Integer -> Integer) -> Integer -> Bool
-- 0にfを適用した値と他の要素にfを適用した値を比較
isEqualApplied0_N f n = (filter (/=(f 0)) (map f [0..n])) == []

isGreaterZeroApplied0_N :: (Integer -> Integer) -> Integer -> Bool
isGreaterZeroApplied0_N f n = (filter (<0) (map f [0..n])) == []

isSorted :: [Integer] -> Bool
isSorted [] = True
isSorted [_] = True
isSorted (x:y:xs) = (x <= y) && isSorted (y:xs)

isIncreasingOrderApplied0_N :: (Integer -> Integer) -> Integer -> Bool
isIncreasingOrderApplied0_N f n = isSorted(map f [0..n])

