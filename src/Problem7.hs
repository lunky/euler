module Problem7 (
      run
    ) where

run :: Int -> Int
run = generatePrimes


generatePrimes :: Int -> Int
generatePrimes n = ([i | i <- [2..], isPrime i]) !! (n-1)

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime k = (k > 1) && null [ x | x <- [2..isqrt k], k `mod` x == 0] 
