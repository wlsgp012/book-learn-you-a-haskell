module CurriedFunctions where

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

-- compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)
-- divideByTen x =  x / 10

isUpperAlpanum :: Char -> Bool
isUpperAlpanum = (`elem` ['A'..'Z'])