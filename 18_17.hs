isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

judgePalindrome :: IO ()
judgePalindrome
 = do putStrLn "Please input string"
      str <- getLine
      if isPalindrome str then putStr "Palindrome\n" else putStr "NOT Palindrome\n" 

judgePalindrome'
 = putStrLn "Please input string" >>= (\_ -> (getLine >>= \str -> (if isPalindrome str then putStr "Palindrome\n" else putStr "NOT Palindrome\n")))

copy :: IO ()
copy =
 do
  line <- getLine
  let whileCopy =
       do
        if (line == "")
         then (return ())
         else
          do putStrLn line
             line <- getLine
             whileCopy             
  whileCopy


copy' = getLine >>= (\line -> (if (line == "")
                                      then (return ())
                                      else
                                       do putStrLn line
                                          line <- getLine
                                          whileCopy) >>= (\whileCopy -> whileCopy))
