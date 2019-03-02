main = do
 a <- myAction
 putStrLn $ "The two lines concatennated turn out to be: " ++ a

myAction :: IO String
-- myAction = do
--  a <- getLine
--  b <- getLine
--  return $ a ++ b
myAction = (++) <$> getLine <*> getLine
