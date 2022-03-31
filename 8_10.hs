isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

judgePalindrome :: IO ()
judgePalindrome
 = do putStrLn "Please input string"
      str <- getLine
      if isPalindrome str then putStr "Palindrome\n" else putStr "NOT Palindrome\n" 
      