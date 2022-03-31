import Prelude hiding(Word)

type Word = [Char]

makeNewIndex :: [([Int], Word)] -> [([(Int,Int)], Word)]
makeNewIndex = map mergePages

mergePages :: ([Int], Word) -> ([(Int,Int)], Word)
mergePages ([], w) = ([], w)
mergePages (x:xs, w) = ([(x, y)]++z, w) 
 where
  y:ys = getPages (x:xs)
  (z, _) = mergePages(ys, w)

getPages :: [Int] -> [Int]
getPages (x:y:xs)
 | x+1 == y  = getPages (y:xs)
 | otherwise = (x:y:xs)
getPages (x:[]) = [x]
getPages [] = []
