import Prelude hiding(and, or)

and, or :: [Bool] -> Bool

and (x:xs) = x && (and xs)
and [] = True

or (x:xs) = x || (or xs)
or [] = False