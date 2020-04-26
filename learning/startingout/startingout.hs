-- import Data.Time.Clock.POSIX
-- main :: IO ()
-- main = getPOSIXTime >>= print

{-
magicCoin :: Bool -> Bool
magicCoin = \_ -> True

newCoin :: Bool
newCoin = magicCoin False

newCoinAgain :: Bool
newCoinAgain = magicCoin newCoin

newCoinAgain' :: Bool
newCoinAgain' = magicCoin (magicCoin False)

not' :: Bool -> Bool
not' True = False
not' False = True

foo :: Bool
foo = False
main = print(not(not(foo)))
-}

-- doubleSmallNumber' x = (if x > 100 then x else x*2) + 1
-- main = print(doubleSmallNumber'(30))

{-
mylist = 2:[4,8,16,32] ++ [5,9,17,33]
_ = head mylist
_ = tail mylist
_ = last mylist
_ = init mylist
_ = length mylist
_ = null mylist -- returns if list is empty or not
_ = reverse mylist
_ = take 3 mylist
_ = drop 3 mylist
_ = minimum mylist
_ = maximum mylist
_ = sum mylist
_ = product mylist
_ = elem 3 mylist
main = print(mylist!!3)
-}

{-
range0 = [1..10]
range1 = [2,4..20]
range2 = [20,19..1]
range3 = take 10 (cycle [1,2,3])
range4 = take 10 (repeat 5)
range5 = replicate 3 10
main = print(range3)
-}

{-
comp0 = [x*2 | x <- [1..20], x < 10]
comp1 = [ x | x <- [50..100], x `mod` 7 == 3]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
length' xs = sum([1 | _ <- xs])
removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']]
main = print(removeNonUppercase("hElLO"))
-}

tu0 = [[1,2],[8,11],[4,5]]
tu1 = (8, 11)
_ = fst(tu1)
_ = snd(tu1)
tu2 = zip [1..] ["one", "two", "three", "four", "five"]
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
main = print(rightTriangles)
