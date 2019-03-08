module FinalCountDown where

import           Control.Monad.Writer
import           Gcd                            ( DiffList
                                                , toDiffList
                                                )

finalCountDown :: Int -> Writer (DiffList String) ()
finalCountDown 0 = tell (toDiffList ["0"])
finalCountDown x = do
  finalCountDown (x - 1)
  tell (toDiffList [show x])

finalCountDown' :: Int -> Writer [String] ()
finalCountDown' 0 = tell ["0"]
finalCountDown' x = do
  finalCountDown' (x - 1)
  tell [show x]



