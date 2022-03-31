--listPowTwo :: [Integer] -> [Integer]
--listPowTwo iList = out
--                    where
--                     out = (1 : (zipWith (*2) out))
scanl' :: (a -> b -> b) -> b -> [a] -> [b]
scanl' f st iList
  = out
    where
    out = st : zipWith f iList out

-- Factorial Values

-- facVals = scanl' (*) 1 [1 .. ]
listProducts :: [Integer] -> [Integer]
listProducts iList = scanl' (*) 1 iList
listPowTwo = listProducts [2, 2..]