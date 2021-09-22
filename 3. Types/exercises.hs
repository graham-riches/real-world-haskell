-- Ex 1:
toList:: MyList a -> [a]
toList (Cons x xs) = x : toList(xs)
toList Nil = []


-- Ex 2:
data SingleTree = Node a (Maybe Tree a) (Maybe Tree a)
                  deriving (Show)


-- Ex1/2 (Renamed I guess?)
listLength:: [a] -> Int
listLength (x:xs) = 1 + listLength(xs)
listLength [] = 0

-- Ex3
listMean:: [Int] -> Float
listMean [] = 0
listMean x = fromIntegral(totalSum) / fromIntegral(listLength x)
   where totalSum = foldl (+) 0 x

-- Ex4
createPalindrome:: [a] -> [a]
createPalindrome x = x ++ reverse x

--Ex5 - Note could be faster as this scans the entire list
isPalindrome:: [a] -> Bool
isPalindrome x = x == reverse x

--Ex6
sortByListLength:: [[a]] -> [[a]]
sortByListLength x = sortBy (\l1 l2 -> compare (length l1) (length l2)) x

--Ex7
myIntersperse:: a -> [[a]] -> [a]
myIntersperse sep [x] = x
myIntersperse sep (x:xs) = x ++ [sep] ++ myIntersperse sep xs
myIntersperse set [] = []
