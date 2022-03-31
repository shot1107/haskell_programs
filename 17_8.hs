import Data.List

perms :: Eq a => [a] -> [[a]]
perms [] = [[]]
perms xs = [x:ps | x <- xs, ps <- perms (xs\\[x])]

tmp xs = concat (map (\x -> map (x:) (perms (xs\\[x]))) xs)
[x:p | x <- xs, p <- perms (xs\\[x])]
= concat [[x:p | p <- perms (xs\\[x])] | x <- xs]
= concat [[(x:) p | p <- perms (xs\\[x])] | x <- xs]
= concat [map (x:) perms (xs\\[x]) | x <- xs]
= concat [(\x -> map (x:) (perms (xs\\[x]))) x | x <- xs]
= concat (map (\x -> map (x:) (perms (xs\\[x]))) xs)
