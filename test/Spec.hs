import Test.HUnit
import Lib

testCalculateScoreZeroes :: Test
testCalculateScoreZeroes = TestCase $ assertEqual
  "calculateScore 0 - 0 returns love - love"
  "love - love" (calculateScore 0 0)

testCalculateScoreOneZero :: Test
testCalculateScoreOneZero = TestCase $ assertEqual
  "calculateScore 1 - 0, returns fifteen - love"
  "fifteen - love" (calculateScore 1 0)

testCalculateScoreOneOne :: Test
testCalculateScoreOneOne = TestCase $ assertEqual
  "calculateScore 1 - 1, returns fifteen - fifteen"
  "fifteen - fifteen" (calculateScore 1 1)

testCalculateScoreTwoTwo :: Test
testCalculateScoreTwoTwo = TestCase $ assertEqual
  "calculateScore 2 - 2, returns thirty - thirty"
  "thirty - thirty" (calculateScore 2 2)

testCalculateScoreThreeTwo :: Test
testCalculateScoreThreeTwo = TestCase $ assertEqual
  "calculateScore 3 - 2, returns forty - thirty"
  "forty - thirty" (calculateScore 3 2)

testCalculateScoreThreeThree :: Test
testCalculateScoreThreeThree = TestCase $ assertEqual
  "calculateScore 3 - 3, returns deuce"
  "deuce" (calculateScore 3 3)

testCalculateScoreAdvantageA :: Test
testCalculateScoreAdvantageA = TestCase $ assertEqual
  "calculateScore 4 - 3, returns advantage a"
  "advantage a" (calculateScore 4 3)

testCalculateScoreAdvantageB :: Test
testCalculateScoreAdvantageB = TestCase $ assertEqual
  "calculateScore 3 - 4, returns advantage b"
  "advantage b" (calculateScore 3 4)

testCalculateScoreWinnerA :: Test
testCalculateScoreWinnerA = TestCase $ assertEqual
  "calculateScore 5 - 3, returns winner a"
  "winner a" (calculateScore 5 3)

testCalculateScoreWinnerB :: Test
testCalculateScoreWinnerB = TestCase $ assertEqual
  "calculateScore 3 - 5, returns winner b"
  "winner b" (calculateScore 3 5)

testCalculateScoreDeuceHighNumber :: Test
testCalculateScoreDeuceHighNumber = TestCase $ assertEqual
  "calculateScore 5 - 5, returns deuce"
  "deuce" (calculateScore 5 5)

main :: IO Counts
main = runTestTT $ TestList
  [ testCalculateScoreZeroes
  , testCalculateScoreOneZero
  , testCalculateScoreOneOne
  , testCalculateScoreTwoTwo
  , testCalculateScoreThreeTwo
  , testCalculateScoreThreeThree
  , testCalculateScoreAdvantageA
  , testCalculateScoreAdvantageB
  , testCalculateScoreWinnerA
  , testCalculateScoreWinnerB
  , testCalculateScoreDeuceHighNumber ]
