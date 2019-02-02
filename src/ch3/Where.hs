module Where where

bmiTell3 :: (RealFloat a) => a -> a -> String
bmiTell3 weight height
 | bmi <= 18.5 = "You're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal"
 | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^ 2

bmiTell4 :: (RealFloat a) => a -> a -> String
bmiTell4 weight height
 | bmi <= skinny = "You're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal"
 | bmi <= fat = "You're fat! Lose some weight, fatty!"
 | otherwise = "You're a whale, congratulations!"
 where bmi = weight / height ^ 2
       skinny = 18.5
       normal = 25.0
       fat = 30.0

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where (f:_) = firstname
       (l:_) = lastname

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w,h) <- xs]
 where bmi weight height = weight / height ^ 2