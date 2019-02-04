module Fold where

sum' :: (Num a) => [a] -> a
-- sum' xs = foldl (\acc x -> acc+x) 0 xs
sum' = foldl (+) 0


elem' :: (Eq a) => a -> [a] -> Bool
-- elem' y ys = foldl (\acc x -> if x==y then True else acc) False ys
elem' y = foldl (\acc x -> if x==y then True else acc) False

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs
-- map' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

maximum' :: (Ord a) => [a] -> a
-- maximum' = foldr (\x acc -> if x > acc then x else acc) 0
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
-- reverse' = foldr (\x acc -> acc ++ [x]) []
-- reverse' = foldl (\acc x -> x : acc) []
reverse' = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
-- product' = foldr (\x acc -> x * acc) 1
-- product' = foldl (\acc x -> acc * x) 1
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldl (\acc x -> if p x then acc ++ [x] else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)