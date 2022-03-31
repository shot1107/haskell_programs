subLists :: [a] -> [[a]]
subLists [] = [[]]
subLists (x:xs) = [x:ys | ys <- (subLists xs)] ++ (subLists xs) 

subSequencesRec :: [a] -> [[a]]
subSequencesRec [] = [[]]
subSequencesRec (x:xs) = [x]:[x:ys | ys <- (subSequencesRec xs), (length ys) /= 0]
subSequences :: [a] -> [[a]]
subSequences xs = foldr (++) [] [subSequencesRec (drop n xs) | n <- [0..(length xs)]]