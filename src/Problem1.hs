module Problem1 (
     run
    ) where

-- import System.Environment

run :: Int -> Int
run input = sum [x | x <-[1..input-1], x `mod` 3==0 || x `mod` 5 == 0]

{--
getNumberArgument = do
            args <- getArgs 
            if not (null args) then 
              return Just (read $ head args)
            else 
              return Nothing
--            if not (null args) then read (head args) else Nothing
--}
