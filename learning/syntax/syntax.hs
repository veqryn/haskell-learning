-- format:
add :: Int -> Int -> Int
add x y = x + y
-- main = print(add 5 6) 
-- The same as golang:
-- func add(x, y int) int { return x + y }

-- pattern matching function definitions:
lucky :: (Integral a) => a -> String
-- order matters!
-- specific match
lucky 7 = "LUCKY NUMBER SEVEN!"
-- catch-all
lucky x = "Sorry, you're out of luck, pal!"

-- main = print (lucky 7)
-- haskell allows a missing catch-all, which is a problem


addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)
-- main = print (addVectors (1,2) (3,4))

addVectorsBetter (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
-- main = print(addVectorsBetter (1,2) (3,4))

xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
-- main = print [a + b | (a, b) <- xs]

wtf :: [Int] -> Int
wtf [] = 0
wtf (x:[]) = x -- same as: wtf [x] = x
wtf (x:y:[]) = x + y -- same as: wtf [x, y] = x + y
wtf (x:y:z:[]) = x + y + z -- same as: wtf [x, y, z] = x + y + z
wtf (x:y:z:zs) = x + y + z + (length zs)

-- main = print (wtf [2, 3, 4, 5, 6, 7]) -- prints 12

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

myList :: [Int]
myList = []
-- anonymous variable, equivalent to myList
-- main = print(head' []::[Int])

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs
-- main = print(length' [23,41,51,262])

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs
-- main = print(sum' [2, 3, 4, 5])

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
-- main = print(capital "chris")

-- guards (aka: a switch statement, in the form of a pattern matching function)
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
      | bmi <= 18.5   = "<"
      | bmi <= normal = "="
      | bmi <= 30.0   = ">"
      | otherwise     = ">>"
      where bmi = weight / height ^ 2
            normal = 25.0

-- main = print(bmiTell 85 1.90)

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b

-- main = print(max' 10 11)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

-- main = print(initials "Chris" "Duncan")

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

-- main = print(calcBmis [(160, 80), (150, 75)])

-- let (basically the same as where, but you put the assignments (bindings) first, then the expressions)
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

-- main = print(cylinder 3 5)

-- expressions, such as if statements, can go anywhere:
-- main = print [if 5 > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "Bar"]
-- main = print [let i = 5 in if i > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "Bar"]

-- Can create local functions with let
-- main = print [let square x = x * x in (square 5, square 3, square 2)]  

-- Separate multiple variables with semi-colons
-- main = print (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
-- main = print(calcBmis [(160, 80), (150, 75)])

-- case statements (actually pattern matching is just syntactic sugar for case statements)
-- variables have to line up (wtf??)
head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head for empty lists!"
                       (x:_) -> x
-- main = print(head'' ["foo", "bar"])

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."
-- main = print(describeList "a")

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
main = print(describeList' "ab")
