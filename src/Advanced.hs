module Advanced (
) where

myPartition' :: (a -> Bool) -> [a] -> ([a], [a]) -> ([a], [a])
myPartition' _ [] (l1, l2) = (reverse l1, reverse l2)
myPartition' f (x:xs) (l1, l2) = if f x
    then myPartition' f xs (x:l1, l2)
    else myPartition' f xs (l1, x:l2)

myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition f xs = myPartition' f xs ([], [])

joinList :: [a] -> [[a]] -> [a]
joinList _ [] = []
joinList sep list = concat list'
    where list' = map (++ sep) (init list) ++ [last list]


