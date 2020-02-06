module Data (
) where

data Option =
    Option1 Int |
    Option2 String Char |
    Option3

optionParse :: [String] -> Option
optionParse xs
    | "1" `elem` xs = Option1 ()

data myMaybe =
    Just a
    Nothing


