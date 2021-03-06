module Pierr where

import Control.Monad hiding (guard)

type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (left, right)
 | abs ((left + n) - right) < 4 = Just (left + n, right)
 | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
 | abs (left - (right + n)) < 4 = Just (left, right + n)
 | otherwise = Nothing

-- return (0,0) >>= landRight 2 >>= landLeft 2 >>= landRight 2
-- return (0,0) >>= landLeft 1 >>= landRight 4 >>= landLeft (-1) >>= landRight (-2)

banana :: Pole -> Maybe Pole
banana _ = Nothing

-- return (0,0) >>= landLeft 1 >>= banana >>= landRight 1
-- return (0,0) >>= landLeft 1 >> Nothing >>= landRight 1

foo :: Maybe String
-- foo = Just 3 >>= (\x ->
--       Just "!" >>= (\y ->
--       Just (show x + y)))
foo = do
 x <- Just 3
 y <- Just "!"
 Just (show x ++ y)

routine :: Maybe Pole
routine = do
 start <- return (0,0)
 first <- landLeft 2 start
 -- Nothing
 second <- landRight 2 first
 landLeft 1 second

wopwop :: Maybe Char
wopwop = do
 (x:xs) <- Just ""
 return x

-- [1,2] >>= \n -> ['a','b'] >>= \ch -> return (n, ch)
listOfTuples :: [(Int, Char)]
listOfTuples = do
 n <- [1,2]
 ch <- ['a', 'b']
 return (n, ch)

guard :: (MonadPlus m) => Bool -> m ()
guard True = return ()
guard False = mzero

-- [1..50] >>= (\x -> guard ('7' `elem` show x) >> return x)

sevensOnly :: [Int]
sevensOnly = do
 x <- [1..50]
 guard ('7' `elem` show x)
 return x