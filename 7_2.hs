func7_2 :: [Integer] -> Integer
func7_2 (x:y:l) = x+y
func7_2 (x:l) = x
func7_2 [] = 0