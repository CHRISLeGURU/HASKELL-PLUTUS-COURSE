-- H1 checker le types 

:type  42
:t 3.14
:type "Haskell"
:t 'Z'
type True && False

-- HC2T2 - FONCTION d'addition, verification (nombre pair et de concentenation)
add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2

-- HC2T3 -  Variables Immuables en Hasell
myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.141592653589793

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- HC2T4 - Infix --> Prefix Conversions
-- 5 + 3 --> (+) 5 3
-- 10 * 4 -->  (*) 10 4
-- True && False  --> (&&) True False

--  (+) 7 2  -->  7 + 2
-- (*) 6 5  -->  6 * 5
-- (&&) True False  --> True && False

-- HC2T5 - Fonction de calcul de la surface et de renvoi du maximum 
circleAreaF :: Float -> Float
circleAreaF r = pi * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

-- HC2T6 - Int vs Integer
smallNumber :: Int
smallNumber = 2^62

bigNumber :: Integer
bigNumber = 2^127

-- HC2T7 - Boolean Expressions
bTrueAnd :: Bool
bTrueAnd = True && True

bFalseOr :: Bool
bFalseOr = False || False

bNotTrue :: Bool
bNotTrue = not True

bCompFalse :: Bool
bCompFalse = 1 > 2


main :: IO ()
main = do
    putStrLn "-- HC2T1 --"
    

    putStrLn "-- HC2T2 --"
    print (add 3 4)
    print (isEven 7)
    print (concatStrings "Chris" " +243")

    putStrLn "-- HC2T5 --"
    print (circleAreaF 45.35)
    print (maxOfThree 23 56 21)


    putStrLn "-- HC2T7 --"
    print (bTrueAnd ++ bFalseOr ++ bNotTrue ++ bCompFalse)


 
  