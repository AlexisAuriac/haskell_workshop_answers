module Generic (
) where

plus :: (Num a) => a -> a -> a
plus n1 n2 = n1 + n2

countOccurences :: (Eq a) => [a] -> a -> Int
countOccurences xs x = length $ filter (== x) xs
