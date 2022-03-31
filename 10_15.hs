import Prelude hiding(unzip, last, init)

unzip :: [(a, b)] -> ([a], [b])
unzip xs = foldr unzipSub ([], []) xs
unzipSub :: (a, b) -> ([a], [b]) -> ([a], [b])
unzipSub (x, y) (xs, ys) = (x:xs, y:ys)

last :: [a] -> a
last xs = foldr1 lastSub xs
lastSub :: a -> a -> a
lastSub x y = y

init :: [a] -> [a]
init xs = resultChange (foldr initSub [] xs)
initSub :: a -> [a] -> [a]
initSub x [] = [x]
initSub x (y:xs) = (y:x:xs) 
resultChange :: [a] -> [a]
resultChange (_:xs) = xs