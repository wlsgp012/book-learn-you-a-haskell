module MapAndFilter where

map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
 | p x == True = x : filter' p xs
 | otherwise = filter' p xs

quicksort2 :: (Ord a) => [a] -> [a]
quicksort2 [] = []
quicksort2 (x:xs) =
 let smallerSorted = quicksort2 (filter (<=x) xs)
     biggerSorted = quicksort2 (filter (>x) xs)
 in smallerSorted ++ [x] ++ biggerSorted

largestDivisible :: (Integral a) => a
largestDivisible = head (filter' p [100000, 99999..])
 where p x = x `mod` 3829 == 0

result = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
 | even n = n:chain (n `div` 2)
 | odd n = n:chain (n*3 + 1)

numLongChains = length (filter isLong (map chain [1..100]))
 where isLong xs = length xs > 15

showLongChains = filter isLong (map chain [1..100])
 where isLong xs = length xs > 15
