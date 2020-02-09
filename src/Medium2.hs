module Medium2 (
    myMap,
    myFoldl,
    myPartition,
    myFilter
) where

myMap' :: (a -> b) -> [a] -> [b] -> [b]
myMap' _ [] res = reverse res
myMap' f (x:xs) res = myMap' f xs (f x:res)

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = myMap' f xs []

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl _ res [] = res
myFoldl f res (x:xs) = myFoldl f (f res x) xs

myPartition' :: (a -> Bool) -> [a] -> ([a], [a]) -> ([a], [a])
myPartition' _ [] (l1, l2) = (reverse l1, reverse l2)
myPartition' f (x:xs) (l1, l2) = if f x
    then myPartition' f xs (x:l1, l2)
    else myPartition' f xs (l1, x:l2)

myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition f xs = myPartition' f xs ([], [])

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f xs = fst $ myPartition f xs
