module Basic (
    myHead,
    myLast,
    myTail,
    myInit,
    myNull,
    myLength
) where

myNull :: [a] -> Bool
myNull [] = True
myNull _ = False

myHead :: [a] -> a
myHead [] = error "Not enough elements"
myHead (x:_) = x

myTail :: [a] -> [a]
myTail [] = error "Not enough elements"
myTail (_:xs) = xs

myLast :: [a] -> a
myLast [] = error "Not enough elements"
myLast [x] = x
myLast (_:xs) = myLast xs

myInit' :: [a] -> [a] -> [a]
myInit' [] _ = error "Not enough elements"
myInit' [_] res = reverse res
myInit' (x:xs) res = myInit' xs (x:res)

myInit :: [a] -> [a]
myInit xs = myInit' xs []

myLength :: [a] -> Int
myLength xs = foldl (\res _ -> res + 1) 0 xs
