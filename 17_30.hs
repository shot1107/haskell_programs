
listSums iList = out
                  where
                   out = 0 : zipWith (+) iList out

scanl' :: (a -> b -> b) -> b -> [a] -> [b]
scanl' f st iList
  = out
    where
    out = st : zipWith f iList out

listProducts :: [Integer] -> [Integer]
listProducts iList = scanl' (*) 1 iList

merge :: [Integer] -> [Integer] -> [Integer]
merge (x:xs) (y:ys) = if x < y then (x:(merge xs (y:ys))) else (y:(merge (x:xs) ys)) 

fibonacci :: [Integer]
fibonacci = 0:out
             where
               x:out = 0 : 1 : zipWith (+) out (x:out)

-- hamming :: [Integer]
listPowTwo = listProducts [2, 2..]
listPowThree = listProducts [3, 3..]
listPowFive = listProducts [5, 5..]

twoThree :: [Integer]
twoThree = sort [x*y | x <- listPowTwo, y <- listPowThree] 
hamming = sort [x*y | x <- twoThree, y <- listPowFive]