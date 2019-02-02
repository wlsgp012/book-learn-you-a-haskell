module Baby where

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallumber x = if x > 100 then x else doubleMe x

doubleSmallumber' x = doubleSmallumber x + 1

