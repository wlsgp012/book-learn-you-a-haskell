module Day where

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Eq, Ord, Show, Read, Bounded, Enum)

week = [minBound .. maxBound] :: [Day]
