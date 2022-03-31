merge :: [Integer] -> [Integer] -> [Integer]
merge (x:xs) (y:ys) = if x < y then (x:(merge xs (y:ys))) else (y:(merge (x:xs) ys)) 

removeDuplicates :: [Integer] -> [Integer]
removeDuplicates (x:y:xs) = if x == y then removeDuplicates (x:xs) else (x:(removeDuplicates (y:xs)))