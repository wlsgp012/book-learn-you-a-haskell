
main = do
--  line <- getLine
--  let line' = reverse line
 line' <- fmap reverse getLine
--  line <- getLine
--  let line' = (++) "!"  line
--  line' <- fmap (++"!") getLine -- 이것은 section 이라는 문법 중위함수를 부분적용
 putStrLn $ "You said " ++ line' ++ " backwards!"
 putStrLn $ "Yes, you said " ++ line' ++ " backwards!"
