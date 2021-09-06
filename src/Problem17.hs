module Problem17 (
     run
     ,toWords
     ,numCount
     ,numCount'
    ) where
import Data.Char (digitToInt)


run :: Int -> Int
run input = sum $ map numCount [1..input]

numCount input = length $ numCount' input
numCount' input = (\[a,b,c,d] -> toWords a b c d) $ map digitToInt $ reverse $ take 4 $ reverse $ "0000" ++ show input

toWords :: Int -> Int -> Int -> Int -> [Char]
toWords 0 0 0 0 = ""
toWords 0 0 0 1 = "one"
toWords 0 0 0 2 = "two"
toWords 0 0 0 3 = "three"
toWords 0 0 0 4 = "four"
toWords 0 0 0 5 = "five"
toWords 0 0 0 6 = "six"
toWords 0 0 0 7 = "seven"
toWords 0 0 0 8 = "eight"
toWords 0 0 0 9 = "nine"
toWords 0 0 1 0 = "ten"
toWords 0 0 1 1 = "eleven"
toWords 0 0 1 2 = "twelve"
toWords 0 0 1 3 = "thirteen"
toWords 0 0 1 4 = "fourteen"
toWords 0 0 1 5 = "fifteen"
toWords 0 0 1 6 = "sixteen"
toWords 0 0 1 7 = "seventeen"
toWords 0 0 1 8 = "eighteen"
toWords 0 0 1 9 = "nineteen"
toWords 0 0 2 0 = "twenty"
toWords 0 0 3 0 = "thirty"
toWords 0 0 4 0 = "forty"
toWords 0 0 5 0 = "fifty"
toWords 0 0 6 0 = "sixty"
toWords 0 0 7 0 = "seventy"
toWords 0 0 8 0 = "eighty"
toWords 0 0 9 0 = "ninety"
toWords 0 x 0 0 = toWords 0 0 0 x ++ "Hundred"
toWords 0 0 tens x = toWords 0 0 tens 0 ++ toWords 0 0 0 x
toWords 0 hundreds tens x = toWords 0 0 0 hundreds ++ "HundredAnd" ++ toWords 0 0 tens x
toWords 1 0 0 0 = "oneThousand"
toWords _ _ _ _ = error "valid input is between 0 and 1000 inclusive"


