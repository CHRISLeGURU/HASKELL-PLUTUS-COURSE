-- Série HC6 - Tests dans main

-- HC6T1 - Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- HC6T2 - Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- HC6T3 - Somme avec foldr
sumList :: Num a => [a] -> a
sumList = foldr (+) 0

-- HC6T4 - Produit avec foldl
productList :: Num a => [a] -> a
productList = foldl (*) 1

-- HC6T5 - Inverser une liste
reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

-- HC6T6 - Vérifier si un élément existe
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' y (x:xs) = x == y || elem' y xs

-- HC6T7 - Longueur d'une liste
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

-- HC6T8 - Filtrer pairs
evensOnly :: [Int] -> [Int]
evensOnly = filter even

-- HC6T9 - Implémentation de map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- HC6T10 - Liste des chiffres
digits :: Int -> [Int]
digits n
  | n < 10    = [n]
  | otherwise = digits (n `div` 10) ++ [n `mod` 10]

-- Fonction main pour tester
main :: IO ()
main = do
  putStrLn "=== HC6 - Tests des fonctions ==="

  -- HC6T1
  print (factorial 5)         

  -- HC6T2
  print (fibonacci 10)        

  -- HC6T3
  print (sumList [1..10])     

  -- HC6T4
  print (productList [1..5])  

  -- HC6T5
  print (reverseList [1,2,3,4])

  -- HC6T6
  print (elem' 3 [1,2,3,4])  
  print (elem' 9 [1,2,3,4])   

  -- HC6T7
  print (length' [10,20,30,40]) 

  -- HC6T8
  print (evensOnly [1..10])   
  -- HC6T9
  print (map' (*2) [1..5])    

  -- HC6T10
  print (digits 12345)       
