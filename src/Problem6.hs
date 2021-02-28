module Problem6 (
     run
    ) where

run :: Int -> Int
run input = squareSums input - sumSquares input

sumSquares input = sum [x^2 | x <- [1..input]]

squareSums input = sum [1..input] ^2


