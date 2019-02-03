module Repeat where

repeat' :: a -> [a]
repeat' x = x:repeat' x
