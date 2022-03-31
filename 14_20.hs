Left "aaa" :: Either String Int
Right 1    :: Either String Int

Left 2 :: Either Int Bool
Right True :: Either Int Bool 

join :: (a -> c) -> (b -> d) -> Either a b -> Either c d
join f g (Left x)  = (Left (f x))
join f g (Right y) = (Right (g y))

