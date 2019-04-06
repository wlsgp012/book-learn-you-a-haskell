module RLE where

rle :: String -> String
rle ""      = ""
rle (h : t) = aux 1 h t where
  aux :: Int -> Char -> String -> String
  aux runLength prevChar "" = prevChar : show runLength
  aux runLength prevChar (c : s)
    | c == prevChar = aux (runLength + 1) prevChar s
    | otherwise     = prevChar : shows runLength (aux 1 c s)
    -- | otherwise     = prevChar : show runLength ++ (aux 1 c s)

