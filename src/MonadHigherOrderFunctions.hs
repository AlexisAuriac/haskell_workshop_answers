module Monad (
) where

import Text.Read

mapMReadInt :: [String] -> Maybe [Int]
mapMReadInt xs = mapM readMaybe xs
