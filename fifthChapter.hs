-- HC5T1 - une fonction qui prend une fonction et un entier, puis applique cette fonction trois fois à l’entier.
applyThrice :: (a -> a) -> a -> a
applyThrice f x = f (f (f x))

-- HC5T2 - Une fonction qui fait le filtrage des nombres impairs 
filterOdds :: [Int]
filterOdds = filter odd [1..30]

-- HC5T3 - fONCION qui prend un tableau et verifie si au moins un element du tableau commence par une lettre MAJUSCULE 
import Data.Char (isUpper)

startsWithUpper :: [String] -> Bool
startsWithUpper = any (\word -> not (null word) && isUpper (head word))

-- HC5T4 -  a Simple lambda function
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

-- HC5T5 - Créer une fonction qui prends un int et y  pré-applique 5 dans une multiplication.
multiplyByFive :: Int -> Int
multiplyByFive = (* 5)

-- HC5T6 - Créer une fonction qui compose deux transformations d’abord mettre au carré chaque élément ensuite ne garder que les pairs
squareEvens :: [Int] -> [Int]
squareEvens = filter even . map (^2)

-- HC5T7 - Utilisation de l'operateur $ 
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

-- HC5T8 -  une fonction en style point-free qui prend un int et y ajoute 5
addFive :: Int -> Int
addFive = (+5)

-- HC5T9 - une fonction qui applique une fonction deux fois à chaque élément d’une liste.
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

-- HC5T10 - Créer une fonction qui prend un tableau, eleve chaque nombre au carré,puis filtre les résultats, enfin vérifie si un carré > 50 existe.
checkSquares :: [Int] -> Bool
checkSquares = any (>50) . map (^2)

-- Main test runner
main :: IO ()
main = do
    putStrLn "-- HC5T1 --"
    print (applyThrice (+1) 4)
    print (applyThrice (*2) 2)

    putStrLn "-- HC5T2 --"
    print filterOdds

    putStrLn "-- HC5T3 --"
    print (startsWithUpper ["hello", "World"])
    print (startsWithUpper ["abc", "def"])

    putStrLn "-- HC5T4 --"
    print (biggerThan10 11)
    print (biggerThan10 5)

    putStrLn "-- HC5T5 --"
    print (multiplyByFive 6)

    putStrLn "-- HC5T6 --"
    print (squareEvens [1..5])

    putStrLn "-- HC5T7 --"
    print result

    putStrLn "-- HC5T8 --"
    print (addFive 3)

    putStrLn "-- HC5T9 --"
    print (transformList (+1) [1,2,3])

    putStrLn "-- HC5T10 --"
    print (checkSquares [1,2,3])
    print (checkSquares [5,6,7])

