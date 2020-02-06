module HigherOrderFunctionCombination (
) where

allGreaterThanZero :: [Int] -> Bool
allGreaterThanZero xs = and $ map (> 0) xs
