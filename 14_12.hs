data NTree = NilT |
             Node Integer NTree NTree
             deriving(Show)

reflect :: NTree -> NTree
reflect NilT = NilT
reflect (Node n t1 t2) = Node n (reflect t2) (reflect t1)