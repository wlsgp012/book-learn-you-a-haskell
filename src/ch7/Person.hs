module Person where

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     } deriving (Show)

guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

a = age guy