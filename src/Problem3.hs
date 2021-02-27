module Problem3 (
      run
     ,primes
    ) where

run :: Int -> Int
run = maximum . primes

primes input = primes' input 2 []

primes' input curr collected 
  | input == curr && curr>2 = curr:collected
  | input == curr = collected
  | input `mod` curr == 0 = primes' (input `div` curr) 2 (curr:collected)
  | otherwise = primes' input (curr+1) collected

_input :: Int
_input = 13195
