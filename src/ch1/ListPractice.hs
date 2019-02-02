module ListPractice where

let lostNumbers = [4,8,15,16,23,42]

[1,2,3,4] ++ [9,10,11,12]

"hello" ++ "world"

"Kim Jin Hye"!!5

[3,2,1] > [2,1,0]

head [5,4,3,2,1]

tail [5,4,3,2,1]

last [5, 4, 3, 2, 1]

init [5, 4, 3, 2, 1]

length [5, 4, 3, 2, 1]

null []

reverse [5,4,3,2,1]

take 3  [5,4,3,2,1]

let b = [4,3,2,1]

sum b

product b

elem 4 b

4 `elem` b

[1..20]

['a'..'z']

[2,4..20]

[3,6..20]

[20, 18..1]

[13,26 ..13*24]

take 5 [1,5..]

let c = cycle[1,2,3]

take 10 c

let d = repeat 5

take 5 d

replicate 3 10

[x*2 | x <- [1..10]]

[x | x <-[50..100], x `mod` 7 ==3]

boomBangs xs = [if x < 10 then "BOOM!" else "BAG!" | x <- xs, odd x]

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

let xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]

[[x | x <- xs, even x] | xs <- xxs]

