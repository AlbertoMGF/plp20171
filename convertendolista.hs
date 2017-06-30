import Data.List

imprimir_item_das_listas :: [String] -> [String] -> Int -> String
imprimir_item_das_listas lista1 lista2 posicao = (lista1!!posicao) ++ (" " ++ (lista2!!posicao))



main = do
  input <- getLine
  let lista1 = words input
  
  input <- getLine
  let lista2 = words input
    
  let result = concat [(imprimir_item_das_listas lista1 lista2 i) ++ "\n" | i <- [0,1..(length lista1 - 1)]]
  putStr result
    

