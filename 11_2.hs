import Prelude hiding ( id )

id :: x -> x
id x = x

f :: Int -> Bool
f 0 = False
f 1 = True
f _ = True

g = id f
