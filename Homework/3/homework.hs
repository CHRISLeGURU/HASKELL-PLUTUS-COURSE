--1
checkConsumption :: Float -> Float -> Float -> String
checkConsumption consumption hours maxAllowed
  | monthly > maxAllowed  = "Bigger than maximum"
  | monthly == maxAllowed = "Equal to maximum"
  | otherwise             = "Smaller than maximum"
  where
    monthly = consumption * hours * 30

--2
checkConsumptionDetailed :: Float -> Float -> Float -> String
checkConsumptionDetailed consumption hours maxAllowed
  | monthly > maxAllowed  = "Exceeded by " ++ show (monthly - maxAllowed) ++ " kWh"
  | monthly == maxAllowed = "Exactly at the limit: " ++ show monthly ++ " kWh"
  | otherwise             = "Saved " ++ show (maxAllowed - monthly) ++ " kWh"
  where
    monthly = consumption * hours * 30

--3
complexCalculation :: Float -> Float -> Float
complexCalculation x y =
  let square = x * x
      cube   = y * y * y
      sumXY  = x + y
  in (square + cube) / sumXY

--4
safeQuotientIf :: Float -> Float -> String
safeQuotientIf _ 0 = "Division by zero is not possible"
safeQuotientIf x y =
  let q = x / y
  in if q <= 1 then show q else show (1 / q)


--5
sumSqrts :: Float -> Float -> Float
sumSqrts x y =
  let prod = x * y
      quot = x / y
      res = sqrtProd + sqrtQuot
        where
          sqrtProd = sqrt prod
          sqrtQuot = sqrt quot
  in res
