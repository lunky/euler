module Problem4 (
    run
    ) where

run :: Int -> Int
run input = maximum $ filter isPalindrome $ [ x*y | x <- pNumber input, y <- pNumber input]

pNumber digits = [10^(digits-1)..10^(digits)-1]

isPalindrome x = read (reverse $ show x) == x
