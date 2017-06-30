import Data.List

imprimir_vogal :: String -> String
imprimir_vogal pal
  | (last pal)  == 'a' = "a"
  | (last pal) == 'e' = "e"
  | (last pal) == 'i' = "i"
  | (last pal) == 'o' = "o"
  | (last pal) == 'u' = "u"
  | (last pal) == 'A' = "A"
  | (last pal) == 'E' = "E"
  | (last pal) == 'I' = "I"
  | (last pal) == 'O' = "O"
  | (last pal) == 'U' = "U"
  | otherwise = ""
  
main = do
  input <- getLine
  let pal1 = imprimir_vogal input
  
  input <- getLine
  let pal2 = imprimir_vogal input

  input <- getLine
  let pal3 = imprimir_vogal input
  
  input <- getLine
  let pal4 = imprimir_vogal input
  
  input <- getLine
  let pal5 = imprimir_vogal input
  
  putStrLn (pal1 ++ pal2 ++ pal3 ++ pal4 ++ pal5)
  
  
