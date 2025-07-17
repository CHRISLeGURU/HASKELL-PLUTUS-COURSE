
-- HC3T1 - fonction qui verifie si un nombre est soit postif, negatif ou zero 
checkNumber :: Int -> String
checkNumber n = if n > 0 then "Positive" else if n < 0 then "Negative" else "Zero"

-- HC3T2 - verification conditonnlle via des guards
grade :: Int -> String
grade x
  | x >= 90 = "A"
  | x >= 80 = "B"
  | x >= 70 = "C"
  | x >= 60 = "D"
  | otherwise = "F"

-- HC3T3 - fonction de convertion d'un int en valeur hexadécimal réprensentant une couleur 
rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r,g,b) = "#" ++ hex r ++ hex g ++ hex b
  where
    toHex n = let h = "0123456789ABCDEF"
                  hi = n `div` 16
                  lo = n `mod` 16
              in [h !! hi, h !! lo]
    hex = toHex

-- HC3T4 - une fonction qui calcule l'air d'un triangle avec une la formule de HERON
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c = sqrt (s * (s - a) * (s - b) * (s - c))
  where s = (a + b + c) / 2

-- HC3T5 - Fonctionnant déterminant le type d'un triangle via des guards
triangleType :: Float -> Float -> Float -> String
triangleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || a == c = "Isosceles"
  | otherwise = "Scalene"

-- HC3T6 - Fonction prenant un entier (qui correspond à une année et verifie si cette année est bissexitile avec des if else)
isLeapYear :: Int -> Bool
isLeapYear y = if y `mod` 400 == 0 then True
               else if y `mod` 100 == 0 then False
               else if y `mod` 4 == 0 then True
               else False

-- HC3T7 - Déterminer la saison en fonction du mois à l'aide des gardes
season :: Int -> String
season m
  | m `elem` [12,1,2] = "Winter"
  | m `elem` [3,4,5] = "Spring"
  | m `elem` [6,7,8] = "Summer"
  | m `elem` [9,10,11] = "Autumn"
  | otherwise = "Invalid month"

-- HC3T8 - Fonction calculant le BMI category avec utilisation de  where
bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25 = "Normal"
  | bmi < 30 = "Overweight"
  | otherwise = "Obese"
  where bmi = weight / height^2

-- HC3T9 - Fonction renvoyant le maximum de trois nombres avec utilisation de let et  in  
maxOfThreeLet :: Int -> Int -> Int -> Int
maxOfThreeLet a b c = let m1 = max a b
                           m2 = max m1 c
                       in m2

-- HC3T10 - verifier si une chaine de caractere est un  Palindrome 
isPalindrome :: String -> Bool
isPalindrome s
  | length s <= 1 = True
  | head s == last s = isPalindrome (init (tail s))
  | otherwise = False


main :: IO ()
main = do

    
    putStrLn "-- HC3T1 --"
    print (checkNumber (-5))

    putStrLn "-- HC3T2 --"
    print (grade 88)

    putStrLn "-- HC3T3 --"
    print (rgbToHex (255,0,127))

    putStrLn "-- HC3T4 --"
    print (triangleArea 3 4 5)

    putStrLn "-- HC3T5 --"
    print (triangleType 5 5 8)

    putStrLn "-- HC3T6 --"
    print (isLeapYear 2024)

    putStrLn "-- HC3T7 --"
    print (season 11)

    putStrLn "-- HC3T8 --"
    print (bmiCategory 70 1.75)

    putStrLn "HC3T9"
    print maxOfThreeLet 34 65 78

    putStrLn "-- HC3T10 --"
    print (isPalindrome "racecar")















  
  
  

  
  
  
  