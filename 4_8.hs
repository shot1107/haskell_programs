triArea :: Float -> Float -> Float -> Float
triArea a b c
 | possible  = sqrt (s*(s - a)*(s - b)*(s - c))
 | otherwise = 0
 
 where
 
 s = ( a + b + c ) / 2
  
 possible :: Bool
 possible
 
  | a > 0 && b > 0 && c > 0 &&
    a < (b + c) &&  b < (a + c) && c < (a + b)  = True    
  | otherwise                                   =  False
