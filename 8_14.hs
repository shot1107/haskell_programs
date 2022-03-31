wc :: IO()
wc = wcSub (0, 0, 0)

wcSub :: (Int, Int, Int) -> IO()
wcSub (nLine, nWord, nChar)
 = do line <- getLine
      if line == ""
      then
       do putStr ("line: " ++ show nLine ++ ", ")
          putStr ("word: " ++ show nWord ++ ", ")
          putStr ("charcter: " ++ (show nChar) ++ "\n")
      else
       do putStr (line ++ "\n")
          wcSub (nLine+1, nWord+(length (filter (==' ') line))+1, nChar+(length (filter (/=' ') line)))