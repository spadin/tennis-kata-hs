module Lib
    ( calculateScore
    ) where

score :: (Integral int) => int -> String
score 0 = "love"
score 1 = "fifteen"
score 2 = "thirty"
score 3 = "forty"

greater :: (Integral int) => int -> int -> String
greater a b
  | a > b = "a"
  | b > a = "b"

calculateScore :: (Integral int) => int -> int -> String
calculateScore a b
  | a <= 3
  , b <= 3
  , a + b < 6
  = score a ++ " - " ++ score b

calculateScore a b
  | a + b == 6 || a == b
  = "deuce"

calculateScore a b
  | abs (a - b) > 1
  = "winner " ++ greater a b

calculateScore a b = "advantage " ++ greater a b
