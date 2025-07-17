--1  une fonction qui prend un état météo (comme "sunny" ou "rainy") et retourne une phrase descriptive.
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

--2 Écrire une fonction qui reconnaît un jour de la semaine (par exemple "Monday", "Sunday") et qui dit si c’est un weekend ou un jour normal, traintant aussi le cas ou on placerait un jour invalide
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType d
  | d `elem` ["Monday","Tuesday","Wednesday","Thursday","Friday"] 
      = "It's a weekday."
  | otherwise 
      = "Invalid day"

--3  une fonction qui prend une note entre 0 et 100 et retourne un commentaire textuel en fontion de certaines conditions
gradeComment :: Int -> String
gradeComment x
  | x >= 90 && x <= 100 = "Excellent!"
  | x >= 70 && x <= 89  = "Good job!"
  | x >= 50 && x <= 69  = "You passed."
  | x >= 0  && x <= 49  = "Better luck next time."
  | otherwise           = "Invalid grade"

--4  une fonction qui retourne un message spécial selon un âge donné.
specialBirthday :: Int -> String
specialBirthday 1  = "Premier anniversaire !"
specialBirthday 18 = "Tu es adulte !"
specialBirthday 60 = "Enfin, je peux arrêter de suivre les nouvelles expressions à la mode !"
specialBirthday _  = "Rien de spécial"


--5 meme foncionnement que la fonction précedente avec une fonctionnalité permettant d'afficher l'age pour le cas de valeurs ne respectant pas la condition
specialBirthdayDetailed :: Int -> String
specialBirthdayDetailed 1  = "Premier anniversaire !"
specialBirthdayDetailed 18 = "Tu es adulte !"
specialBirthdayDetailed 60 = "Enfin, je peux arrêter de suivre les nouvelles expressions à la mode !"
specialBirthdayDetailed age = "Rien de spécial pour l'âge " ++ show age


--6 une fonction qui analyse le contenu d'une liste et retourne un message selon le nombre d’éléments : vide, 1, 2, ou plus de 2.
whatsInsideThisList :: [a] -> String
whatsInsideThisList []        = "List is empty"
whatsInsideThisList [_]       = "List has one element"
whatsInsideThisList [_, _]    = "List has two elements"
whatsInsideThisList (_:_:_:_) = "List has more than two elements"


--7 une fonction qui retourne les 1ᵉʳ et 3ᵉ éléments d’une liste si elle est assez longue, sinon rien (Nothing);
-- on utilise le mot clé maybe pour traiter cas de reussite et nothing au cas ou on a un tableau invalide
firstAndThird :: [a] -> Maybe (a, a)
firstAndThird (x:_:z:_) = Just (x, z)
firstAndThird _         = Nothing


--8 Une fonction qui prend un tuples et renvoit la valeur de ce deux tuples en chaine de caractere
describeTuple :: (Show a, Show b) => (a, b) -> String
describeTuple (x, y) =
  "First: " ++ show x ++ ", Second: " ++ show y


main::IO()
main = do
    putStrLn "Premier exemple"
    print (weatherReport "sunny")

    putStrLn "deuxieme exemple"
    print (dayType "sunday")

    putStrLn "troisieme exemple"
    print (gradeComment 95)

    putStrLn "Quatrieme exemple"
    print(specialBirthday 50)

    putStrLn "cinquieme exemple"
    print (specialBirthdayDetailed 18)

    putStrLn "sixieme exemple"
    print  (whatsInsideThisList [23])

    putStrLn "Septieme exemple"
    print (firstAndThird [10,20,30,40])

    putStrLn "Huitieme exemple "
    print (describeTuple (True, 42))        -- "First: True, Second: 42)
    print (describeTuple ("Hi", [1,2,3]))    -- "First: \"Hi\", Second: [1,2,3]")


