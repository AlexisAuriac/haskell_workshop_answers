module Map (
) where

foldSum :: [Int] -> Int
foldSum xs = foldl (+) 0 xs

foldMul :: [Int] -> Int
foldMul xs = foldl (*) 1 xs

foldAllTrue :: [Bool] -> Bool
foldAllTrue xs = foldl (&&) True xs

foldAnyTrue :: [Bool] -> Bool
foldAnyTrue xs = foldl (||) True xs

foldNoneTrue :: [Bool] -> Bool
foldNoneTrue xs = not $ foldl (||) False xs

foldReverse :: [Int] -> [Int]
foldReverse l = foldl (\xs x -> x:xs) [] l

foldFactorial :: Int -> Int
foldFactorial n = foldl (*) 1 [2..n]
