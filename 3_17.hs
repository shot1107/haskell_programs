isDigit :: Char -> Bool
isDigit aChar

 |      aChar >= '0'
    &&  aChar <= '9'  = True

 | otherwise          = False



charToNum :: Char -> Int
charToNum c
 |  isDigit c = fromEnum c - fromEnum '0'
 |  otherwise = 0