custoporcombustivel :: Double -> Double -> Double
custoporcombustivel x y = x * y

calculamelhorpreco :: Double -> Double -> Double -> Double
calculamelhorpreco alcool gasolina litros = if custoporcombustivel alcool litros >= ((custoporcombustivel gasolina litros) * 0.7) then custoporcombustivel gasolina litros else custoporcombustivel alcool litros

main = do
  input <- getLine
  let alcool =  read input
  
  input <- getLine
  let gasolina =  read input
  
  input <- getLine
  let litros =  read input

  print(calculamelhorpreco alcool gasolina litros)
