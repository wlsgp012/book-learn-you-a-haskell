module Stack2 where

import           Stack                          ( Stack )
import           Control.Monad.State

pop :: State Stack Int
pop = state $ \(x : xs) -> (x, xs)

push :: Int -> State Stack ()
push a = state $ \xs -> ((), a : xs)

-- stackManip :: Stack -> (Int, Stack)
-- stackManip stack =
--   let ((), newStack1) = push 3 stack
--       (_ , newStack2) = pop newStack1
--   in  pop newStack2
stackManip :: State Stack Int
stackManip = do
  push 3
  pop
  pop

stackStuff :: State Stack ()
stackStuff = do
  a <- pop
  if a == 5
    then push 5
    else do
      push 3
      push 8

moreStack :: State Stack ()
moreStack = do
  a <- stackManip
  if a == 100
    then stackStuff
    else return ()