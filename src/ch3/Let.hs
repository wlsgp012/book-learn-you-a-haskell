module Let where

cyclinder :: (RealFloat a) => a -> a -> a
cyclinder r h =
 let sideArea = 2 * pi * r * h
     topArea = pi * r ^ 2
 in sideArea + 2 * topArea
