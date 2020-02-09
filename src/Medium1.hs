module Medium1 (
    myTake,
    myDrop,
    myTakeWhile,
    myDropWhile
) where

myTake :: Int -> [a] -> [a]
myTake n xs = map (\i -> xs!!i) [0..(min n (length xs)) - 1]

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (_:xs) = myDrop (n-1) xs

myTakeWhile' :: (a -> Bool) -> [a] -> [a] -> [a]
myTakeWhile' _ [] res = reverse res
myTakeWhile' p (x:xs) res
    | p x = myTakeWhile' p xs (x:res)
    | otherwise = reverse res

myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile p xs = myTakeWhile' p xs []

myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile _ [] = []
myDropWhile p (x:xs)
    | p x = myDropWhile p xs
    | otherwise = x:xs
