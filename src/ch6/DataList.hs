module DataList where

import Data.List

sperse = intersperse '.' "MONKEY"

calate = intercalate [0,0] [[1,2,3],[4,5,6],[7,8,9]]

trans = transpose [[1,2,3], [4,5,6], [7,8,9]]

con = concat [[1,2,3],[4,5,6]]

concatMap (replicate 4) [1..3]

and $ map (>4) [5,6,7,8]

or $ map (==4) [2,3,4,5,6,1]

any (==4) [2,3,4,5,6,1]

all (>4) [6,9,10]

take 10 $ iterate (*2) 1

splitAt 3 "heyman"

splitAt 4 "heyman"

takeWhile (>3) [10,9..1]

dropWhile (>3) [10,9..1]

break (==4) [1..7]

span (/=4) [1..7]

map (\l@(x:xs) -> (x, length l)) . group . sort $ [1,1,1,2,2,3,3,3,3,2,1]

let w = "w00t" in zip (inits w) (tails w)

-- isInfixOf
search :: (Eq a) => [a] -> [a] -> Bool
search needle haystack =
 let nlen = length needle
 in fold1 (\acc x -> if take nlen x == needle then True else acc) False (tails haystack)

find (>4) [1..10]

' ' `elemIndices` "Where are the spaces?"

words "hey these are the words in this sentence"

unwords ["hey", "there", "mate"]

delete 'h' "hey"

nub [1,2,3,4,2,3,4,1]

[1..10] \\ [2,5,9]

union [1..7] [5..10]

intersect [1..7] [5..10]

insert 4 [3,5,1,2]

groupBy (\ x y -> (x>0) == (y>0)) [-4.3, -2.4, -1.2, 0.4, 2.3, 5.9, 10.5, 29.1, 5.3, -2.4, -14.5, 2.9, 2.3]

groupBy ((==) `on` (>0)) [-4.3, -2.4, -1.2, 0.4, 2.3, 5.9, 10.5, 29.1, 5.3, -2.4, -14.5, 2.9, 2.3]

sortBy (compare `on` length) [[5,4,5,4,4],[1,2,3],[3,5,4,3],[],[2],[2,2]]
-- sortBy (\x y -> length x `compare` length y) [[5,4,5,4,4],[1,2,3],[3,5,4,3],[],[2],[2,2]]

