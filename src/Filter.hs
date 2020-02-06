filterNegative :: [Int] -> [Int]
filterNegative xs = filter (>= 0) xs

filterOdd :: [Int] -> [Int]
filterOdd xs = filter even xs
