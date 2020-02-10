module Medium1 (
    myTake,
    myDrop,
    mySpan,
    myTakeWhile,
    myDropWhile
) where

myTake :: Int -> [a] -> [a]
myTake n xs = map (\i -> xs!!i) [0..(min n (length xs)) - 1]

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (_:xs) = myDrop (n-1) xs

mySpan' :: (a -> Bool) -> [a] -> [a] -> ([a], [a])
mySpan' _ [] left = (reverse left, [])
mySpan' p (x:xs) left
    | p x = mySpan' p xs (x:left)
    | otherwise = (reverse left, x:xs)

mySpan :: (a -> Bool) -> [a] -> ([a], [a])
mySpan p xs = mySpan' p xs []

myTakeWhile :: (a -> Bool) -> [a] -> [a]
myTakeWhile p xs = fst $ mySpan p xs

myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile p xs = snd $ mySpan p xs
