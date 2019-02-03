module QuickSort where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
 let smallerSorted = quicksort [a | a <- xs, a <= x]
     biggerSorted = quicksort [a | a <- xs, a > x]
 in biggerSorted ++ [x] ++  smallerSorted
--  in smallerSorted ++ [x] ++ biggerSorted
