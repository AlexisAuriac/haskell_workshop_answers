module Other (
    myReverse,
    myConcat,
    myNub,
    myElem,
    myNotElem,
    myFind
) where

myReverse :: [a] -> [a]
myReverse xs = foldl (flip (:)) [] xs

myConcat :: [[a]] -> [a]
myConcat xs = foldl (++) [] xs

myNub :: (Eq a) => [a] -> [a]
myNub xs = reverse $ foldl (\res x -> if x `elem` res then res else x:res) [] xs

myElem :: (Eq a) => a -> [a] -> Bool
myElem e xs = any (== e) xs

myNotElem :: (Eq a) => a -> [a] -> Bool
myNotElem e xs = all (/= e) xs

myFind :: (a -> Bool) -> [a] -> a
myFind _ [] = error "No element satisfying the predicate"
myFind p (x:xs)
    | p x = x
    | otherwise = myFind p xs
