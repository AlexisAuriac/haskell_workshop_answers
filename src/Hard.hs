module Hard (
    myReplicate,
    myIntersperse,
    myIntercalate,
    myZip,
    myUnzip,
    mySplitAt
) where

myReplicate :: Int -> a -> [a]
myReplicate n x = map (const x) [1..n]

myIntersperse :: a -> [a] -> [a]
myIntersperse _ [] = []
myIntersperse e xs = init $ xs >>= (:[e])

myIntercalate :: [a] -> [[a]] -> [a]
myIntercalate e xs = concat $ myIntersperse e xs

myZip' :: [a] -> [b] -> [(a, b)] -> [(a, b)]
myZip' [] _ res = reverse res
myZip' _ [] res = reverse res
myZip' (x1:l1) (x2:l2) res = myZip' l1 l2 ((x1, x2):res)

myZip :: [a] -> [b] -> [(a, b)]
myZip l1 l2 = myZip' l1 l2 []

myUnzip :: [(a, b)] -> ([a], [b])
myUnzip xs = let (l1, l2) = foldl (\(l1', l2') (x1, x2) -> (x1:l1', x2:l2')) ([], []) xs in
    (reverse l1, reverse l2)

mySplitAt' :: Int -> [a] -> [a] -> ([a], [a])
mySplitAt' 0 right left = (reverse left, right)
mySplitAt' _ [] left = (reverse left, [])
mySplitAt' n (x:xs) left = mySplitAt' (n-1) xs (x:left)

mySplitAt :: Int -> [a] -> ([a], [a])
mySplitAt n xs
    | n < 0 = ([], xs)
    | otherwise = mySplitAt' n xs []
