{-# LANGUAGE NumericUnderscores #-}
module Problem2 (
     fib
    ,run
    ) where
import Data.Char (digitToInt)
import Data.List (scanl1)

fib :: [Integer]
fib = tail . map head $ scanl (\acc y-> (fib' acc:acc)) [1,0] [0..]

--fib' :: Num a => [a] -> a
fib' :: [Integer] -> Integer
fib' (x:(y:_)) = x+y

run :: Integer 
run = sum $ filter even $ takeWhile (<4_000_000) fib


