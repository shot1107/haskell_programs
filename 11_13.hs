mapFuns :: [a->b] -> a -> [b]

mapFuns [] x = []
mapFuns (f:fs) x = f x : mapFuns fs x

mapFuns' fs x = map ($ x) fs 