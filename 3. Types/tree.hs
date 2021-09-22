data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

data SingleTree = Node a (Maybe Tree a) (Maybe Tree a)
                  deriving (Show)