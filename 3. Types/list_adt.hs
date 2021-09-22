import Data.List

data MyList a = Cons a (MyList a)
              | Nil
              deriving (Show)


fromList:: [a] -> MyList a
fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil


toList:: MyList a -> [a]
toList (Cons x xs) = x : toList(xs)
toList Nil = []


listLength:: [a] -> Int
listLength (x:xs) = 1 + listLength(xs)
listLength [] = 0


listMean:: [Int] -> Float
listMean [] = 0
listMean x = fromIntegral(totalSum) / fromIntegral(listLength x)
   where totalSum = foldl (+) 0 x


createPalindrome:: [a] -> [a]
createPalindrome x = x ++ reverse x


sortByListLength:: [[a]] -> [[a]]
sortByListLength x = sortBy (\l1 l2 -> compare (length l1) (length l2)) x

myIntersperse:: a -> [[a]] -> [a]
myIntersperse sep [x] = x
myIntersperse sep (x:xs) = x ++ [sep] ++ myIntersperse sep xs
myIntersperse set [] = []
