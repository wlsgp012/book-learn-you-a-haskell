import System.IO
import Control.Exception
import Data.Char

main = do
--  handle <- openFile "girlfriend.txt" ReadMode
--  contents <- hGetContents handle
--  putStr contents
--  hClose handle

--  withFile "girlfriend.txt" ReadMode (\handle -> do
--   contents <- hGetContents handle
--   putStr contents)
--
--
-- withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
-- withFile' name mode f = bracket (openFile name mode)
--  (\handle -> hClose handle)
--  (\handle -> f handle)
 contents <- readFile "girlfriend.txt"
--  putStr contents
 writeFile "girlfriendcaps.txt" $ map toUpper contents