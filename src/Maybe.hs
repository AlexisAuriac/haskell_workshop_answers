module Maybe (
) where

maybePlus3IfPositive :: Int -> Maybe Int
maybePlus3IfPositive n = if n > 0
    then Just (n + 3)
    else Nothing
