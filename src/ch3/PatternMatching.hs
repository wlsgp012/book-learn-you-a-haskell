module PatternMatching where

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' []      = error "Can't call head on an empty list"
head' (x : _) = x

length' :: (Num b) => [a] -> b
length' []       = 0
length' (_ : xs) = 1 + length' xs

capital :: String -> String
capital ""           = "Empty String!"
capital all@(x : xs) = "The first letter of " ++ all ++ " is " ++ [x]

tell :: (Show a) => [a] -> String
tell []        = "The list is empty"
tell [x]       = "The list has one element: " ++ show x
tell [x, y]    = "The list has two elements : " ++ show x ++ " and " ++ show y
tell [x, y, z] = "This list is long (size 3)"
tell [x, y, z, _] = "This list is long (size 3+)"
