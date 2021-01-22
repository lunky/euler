module Problem20 (
    run
    ) where
import Data.Char (digitToInt)

run :: Int -> Int
run = sum . map digitToInt . show . product . flip take [1..]

