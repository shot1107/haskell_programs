maxThreeOccurs :: Integer -> Integer -> Integer -> (Integer, Integer)
maxThreeOccurs a b c = (max_num, occurs)
  where
  max_num = max a (max b c)  
  occurs = (if (a == max_num) then 1 else 0) + (if (b == max_num) then 1 else 0) + (if (c == max_num) then 1 else 0)
