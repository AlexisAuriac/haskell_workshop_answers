module Map (
    mapAdd3,
    mapIntToString
) where

-- Adds 3 to all the numbers in the array passed as argument
mapAdd3 :: [Int] -> [Int]
mapAdd3 xs = map (+3) xs

-- Converts an array of numbers into an array of strings
mapIntToString :: [Int] -> [String]
mapIntToString xs = map show xs

mapIntListToIntListList :: [Int] -> [[Int]]
mapIntListToIntListList xs = map (:[]) xs
