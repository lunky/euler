{-# LANGUAGE ScopedTypeVariables #-}
module Problem122 (
     run
    ,run'
) where

import Data.List (find)

run :: Int -> Int
run target = sum $ map run' [1..target]

{-- 
  Brute force the combinations.
  Start with [[1]], add (head + y) for each element in the list
  to get [[2,1]], then [[4,2,1],[3,2,1]] etc..(filtering values > target)
  until we find target, then return the number of elements in the list after
  the initial.
--}
run' :: Int -> Int
run' target = run'' [[1]]
    where run'' input = case find ((==target) . head) input of
            Just result -> length result - 1
            Nothing -> run'' $ concatMap next $ filter ((<target) . head) input

next :: [Int] -> [[Int]]
next input = map (\y -> (:input) $ head input + y) input

{--
  note * a more efficient data structure than a List looks possible but it needs
  to efficiently implement find/filter and head?
--}

_knapsack items = m 
 where
     m 0 = 0
     m w = maximum $ 0:[vi + m (w - wi) | (vi, wi) <- items, wi <= w]
