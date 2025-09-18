--1
{-
ceci est un commentaire multiligne
en haskel & plutus
...
-}

--2
multiply3 :: Int -> Int -> 
multiply3 = x * 3


--3
calculateArea :: Float -> Float
calculateArea r = pi * r * r


--4
cylinderVolume :: Float -> Float -> Float
cylinderVolume r h = calculateArea r * h

--5
-- On réutilise calculateArea
calculateArea :: Float -> Float
calculateArea r = pi * r * r

-- Volume du cylindre
cylinderVolume :: Float -> Float -> Float
cylinderVolume r h = calculateArea r * h

-- Vérifie si le volume >= 42
isBigCylinder :: Float -> Float -> Bool
isBigCylinder r h = cylinderVolume r h >= 42
