splits :: [a] -> [([a], [a])]
splits xs = map (\n -> (take n xs, drop n xs)) [0..(length xs)]
