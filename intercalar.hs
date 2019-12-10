{-
q14
Dadas duas listas ordenadas de forma crescente, obter a lista ordenada resultante da intercalação delas.
Ex.: > intercalar [1,5,10] [2,7,9,20,25]
[1,2,5,7,9,10,20,25]
-}


intercalar :: [Int] -> [Int] -> [Int]
intercalar [] z = z
intercalar z [] = z
intercalar (x:xs) (y:ys) = if (x >= y) then  [y, x] ++ (intercalar xs ys)  else [x, y] ++ (intercalar xs ys)

main = do
print(intercalar [1,5,10] [2,7,9,20,25]) 
