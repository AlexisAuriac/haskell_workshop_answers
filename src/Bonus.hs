module Bonus (
    factorial,
    listToListOfList,
    checkAlltrue,
    myMapM,
    myFoldM
) where

-- Use only 1 foldl call
factorial :: Int -> Int
factorial n = foldl (*) 1 [1..n]

-- Use only 1 map call
listToListOfList :: [a] -> [[a]]
listToListOfList xs = map (:[]) xs

-- Use only 1 all call
checkAlltrue :: a -> [a -> Bool] -> Bool
checkAlltrue x ps = all ($ x) ps

myMapM :: (Monad m) => (a -> m b) -> [a] -> m [b]
myMapM f xs = sequence $ map f xs

myFoldM :: (Monad m) => (b -> a -> m b) -> b -> [a] -> m b
myFoldM _ res [] = pure res
myFoldM f res (x:xs) = f res x >>= \newRes -> myFoldM f newRes xs
