type Picture = [[Char]]

chessLine :: Int -> Char -> [Char]
chessLine 0 c = []
chessLine n c = if c == '#' then ['#']++(chessLine (n-1) '.') else ['.']++(chessLine (n-1) '#') 

chessBoard :: Int -> Picture
chessBoard n =  map (chessLine n) (chessLine n '#')