{-# LANGUAGE NumericUnderscores #-}
module Problem2 (
   fib
  ,run
) where

fib :: [Integer]
fib = tail . map head $ scanl (\ys y-> fib' ys:ys) [1,0] [0..]

fib' :: Num a => [a] -> a
fib' (x:(y:_)) = x+y

run :: Integer
run = sum $ filter even $ takeWhile (<4_000_000) fib


