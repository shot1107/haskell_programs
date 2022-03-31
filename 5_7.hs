data Shape = Circle Float |
             Rectangle Float Float |
             Triangle Float Float Float
             deriving(Eq, Ord, Show)

isRound (Triangle a b c) =  False
area (Triangle a b c) = sqrt(s * (s-a) * (s-b) * (s-c))
 where
  s = (a + b + c) / 2.0
perimeter (Triangle a b c) = a + b + c

