module Problem19 (
     run
     ,dow
     ,daysInYear
     ,leapYear
     ,Day(..)
     ,Month(..)

) where

data Day =  Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
                deriving (Eq, Ord, Show, Read, Bounded, Enum)
data Month =  January | February | March | April | May | June | July | August | September | October | November | December
                deriving (Eq, Ord, Show, Read, Bounded, Enum)

run :: Int
run = length . filter(==Sunday) $ concatMap (\y-> map (\m-> dow y m 1) [January .. December]) [1901 .. 2000]

daysInYear :: Int -> Int
daysInYear y = sum $ map (`daysInMonth` y) [January .. December]

leapYear :: Int -> Bool
leapYear y = (y `mod` 4 == 0 && y `mod` 100 /= 0) || y `mod` 400 == 0

daysInMonth m y
  | m == February = if leapYear y then 29 else 28
  | m `elem` [September, April, June, November] = 30
  | otherwise = 31



dow year month day = [Monday .. Sunday] !! (days year month day `mod` 7) 

days :: Int -> Month -> Int -> Int
days year month day = monthdays year month + day - 1

yeardays :: Int -> Int
yeardays y = sum $ map daysInYear [1900 .. y-1]

monthdays :: Int -> Month -> Int
monthdays year January = yeardays year
monthdays year month = yeardays year +
                  sum (map (`daysInMonth` year) [January .. pred month])
