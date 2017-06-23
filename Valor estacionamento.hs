estacionamento :: String -> Int
estacionamento x
  |x== "moto" = 5
  | x== "carro" = 10
  | otherwise = 30



main = do
  input <- getLine
  print (estacionamento input)
