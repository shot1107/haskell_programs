averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = fromIntegral (a + b + c) / 3.0

howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c = if ( fa > avg ) then 1 else 0 + if ( fb > avg ) then 1 else 0 + if ( fc > avg ) then 1 else 0
                            where
                             avg = averageThree a b c
                             fa = fromIntegral a
                             fb = fromIntegral b
                             fc = fromIntegral c