{-
Basic types:

Int = bits match machine (ie: 32 or 64, usually)
Integer = big int
Float = 32 bit float
Double = 64 bit float
Bool = boolean
Char = single character in single quotes
[] = List
[Char] = String
() = tuple
-}

{-
Generics:

Example: head function returns first element in list
head :: [a] -> a

Example: fst returns first element in a tuple pair
fst :: (a, b) -> a
-}

{-
Typeclasses (interfaces):

Example: (==)  (ex: a == b)
(==) :: (Eq a) => a -> a -> Bool
In another language, this would be like saying: func(a <T extends Equals>, b <T extends Equals>) returns Bool

Example: elem  (ex: 4 `elem` [3,4,5,6] -- this returns True)
(elem) :: (Foldable t, Eq a) => a -> t a -> Bool
-}

{-
Built in type classes:

Eq = Equality = ==, /=
Ord = Ordering = >, <, >=, <= (ie: `compare` can return GT, LT or EQ, meaning greater than, lesser than and equal)
Show = Can be represented as a string (ie: show x)
Read = Can be parsed from a string (ie: read "5" :: Float)
Enum = Can be enumerated (ie: succ, pred)
Bounded = Has upper and lower bound (minBound :: Int)
Num = numeric
Integral = Int and Integer
Floating = Float and Double
-}
