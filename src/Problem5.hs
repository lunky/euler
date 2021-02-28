{-# LANGUAGE TupleSections #-}
module Problem5 (
    run
    ) where

--run :: Int -> Int
run input = snd $ head $ dropWhile (\(a,b)->not a) $ map (areAllDivisible input) [input,input+input..]

areAllDivisible :: Int -> Int -> (Bool,Int)
areAllDivisible  maxRange number = (,number) $ all (\y-> number `mod` y == 0) [maxRange,maxRange-1..1]

