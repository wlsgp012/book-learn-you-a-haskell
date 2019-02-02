module TuplePractice where

fst (8,11)
snd (8,11)

zip [1..5]["one","two","three","four","five"]

zip [1..]["a","b","c","d"]

let triangles = [(a,b,c) | c <-[1..10], b <-[1..10], a <- [1..10]]
-- comment
let rightTriangles = [(a,b,c) | c <-[1..10], b <-[1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

{-
is comment?
-}

