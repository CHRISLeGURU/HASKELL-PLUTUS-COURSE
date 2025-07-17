--H1  Composer (.) deux fonctions simples (double, increment) dans une troisième (doubleThenIncrement).
increment :: Int -> Int
increment x = x + 1

double :: Int -> Int
double x = x * 2

doubleThenIncrement :: Int -> Int
doubleThenIncrement = increment . double

--H2 une fonction pure qui calcule l’aire d’un cercle.
circleArea :: Float -> Float
circleArea r = pi * r * r

--H3 une fonction qui Vérifie si un nombre est strictement supérieur à 18.
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18


--H4  Composer des fonctions pour obtenir les 3 meilleurs joueurs en score.
import Data.List (sortBy)

-- Extrait les noms
extractPlayers :: [(String, Int)] -> [String]
extractPlayers = map fst

-- Trie les joueurs par score décroissant
sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = reverse . sortBy (\(_, s1) (_, s2) -> compare s1 s2)

-- Prend les trois premiers
topThree :: [(String, Int)] -> [(String, Int)]
topThree = take 3

-- Composition finale
getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

--H5 creer une liste infinie et créer une fonction qui va  extraire les n premiers éléments.
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

takeNFromInfinite :: Int -> [Int]
takeNFromInfinite n = take n infiniteNumbers

--H6  une fonction qui prend deux int et retourner leur somme
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

--H7 Une fonction qui fait la Convertion des degrés Fahrenheit en Celsius.
fToC :: Float -> Float
fToC f = (f - 32) * 5 / 9


--H8 une fonction qui applique deux fois une fonction donnée 
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)


main::IO()
main:do



    putStrLn "-- HC1T1 --"
    print (doubleThenIncrement 6)

    putStrLn "-- HC1T2 --"
    print (circleArea 6.96)

    putStrLn "-- HC1T3 --"
    print (greaterThan18 67)

    putStrLn "-- HC1T4 --"
    print (getTopThreePlayers [("Bob", 5), ("Alice", 10), ("Dan", 3), ("Eve", 8)] )

    putStrLn "-- HC1T5 --"
    print (takeNFromInfinite 6)

    putStrLn "-- HC1T6 --"
    print (addNumbers 6 8)

    putStrLn "-- HC1T7 --"
    print (takeNFromInfinite 6)

    putStrLn "-- HC1T8 --"
    print (fToC 67.95)
    
    putStrLn "-- HC1T5 --"
    print (takeNFromInfinite 6)



