module Problem1 (
     run
    ) where

run :: Int -> Int
run input = sum [x | x <-[1..input-1], x `mod` 3==0 || x `mod` 5 == 0]


