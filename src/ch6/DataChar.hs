module DataChar where

import           Data.Char
import           Data.List

encode :: Int -> String -> String
encode shift msg =
  let ords    = map ord msg
      shifted = map (+ shift) ords
  in  map chr shifted

decode :: Int -> String -> String
decode shift = encode (negate shift)

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> digitSum x == n) [1 ..]

