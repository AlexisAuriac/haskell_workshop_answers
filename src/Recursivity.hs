module Recursivity (
) where

recursiveFactorial :: Int -> Int
recursiveFactorial 0 = 1
recursiveFactorial n = n * (recursiveFactorial (n - 1))
