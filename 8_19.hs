copy :: IO ()
copy =
 do
  line <- getLine
  let whileCopy line =
       do
        if (line == "")
         then (return ())
         else
          do putStrLn line
             line <- getLine
             whileCopy line             
  whileCopy line