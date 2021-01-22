module Problem14 (
     run
    ,collatz
    ) where
import Data.Char (digitToInt)

collatz :: Int -> Int
collatz input = collatz' input 1
  where collatz' 1 count = count
        collatz' input count  = if even input then 
                                  collatz' (input `div` 2) (count+1) 
                                else 
                                  collatz' (input *3 + 1) (count + 1)
run :: Int
run = maximum $ map collatz [1..1000000]

