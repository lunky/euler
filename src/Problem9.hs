module Problem9 (
  run
) where

run :: Int -> Int
run input = product $ run' input

run' input = head
                    $ filter(\[a,b,c] -> a ^ 2 + b ^ 2 == c ^ 2) 
                    $ filter (\y->sum y==input) 
                    $ combinationsOf 3 [1..input]

combinationsOf :: Int -> [a] -> [[a]]
combinationsOf 1 as        = map pure as
combinationsOf k as@(x:xs) = run (l-1) (k-1) as $ combinationsOf (k-1) xs
                             where
                             l = length as
                             run :: Int -> Int -> [a] -> [[a]] -> [[a]]
                             run n k ys cs | n == k    = map (ys ++) cs
                                           | otherwise = map (q:) cs ++ run (n-1) k qs (drop dc cs)
                                           where
                                           (q:qs) = take (n-k+1) ys
                                           dc     = product [(n-k+1)..(n-1)] `div` product [1..(k-1)]

{--
  This is from the thread about this problem.. it looks like a mathematical way 
  to solve it - untested.
  -----------------------------------------------------------------------------
  Pier  Mexico   Pascal
    Thu, 19 Aug 2004, 15:04
    Without programming:

  a= 2mn; b= m^2 -n^2; c= m^2 + n^2;
  a + b + c = 1000;

  2mn + (m^2 -n^2) + (m^2 + n^2) = 1000;
  2mn + 2m^2 = 1000;
  2m(m+n) = 1000;
  m(m+n) = 500;

  m>n;

  m= 20; n= 5;
--}
