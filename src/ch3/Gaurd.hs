module Gaurd where

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
 | bmi <= 18.5 = "You're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal"
 | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
 | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
 | weight / height ^ 2 <= 25.0 = "You're supposedly normal"
 | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
 | a > b = a
 | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
 | a > b = GT
 | a == b = EQ
 | otherwise = LT



