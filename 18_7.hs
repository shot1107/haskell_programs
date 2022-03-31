accumulate :: [IO a] -> IO [a]
accumulate [] = return []
accumulate (p:ps) =
 do
  q <- p
  qs <- accumulate ps
  return (q:qs)


sequence' :: [IO a] -> IO ()
sequence' [] = return ()
sequence' (p:ps) =
 do
  q <- p
  qs <- sequence' ps
  return ()