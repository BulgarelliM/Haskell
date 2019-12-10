--13) Remover os n últimos elementos de uma lista de inteiros.

listaMenor :: Integer -> [Integer] -> [Integer]
listaMenor _ [] = []
listaMenor 0 _ = []
listaMenor v (a:as) = a: listaMenor (v-1) as

--conta o numero de elementos na lista
tam :: [v] -> Integer -> Integer
tam [] n = n
tam (x:xs) n = tam xs (n+1)

removerFim :: Integer -> [Integer] -> [Integer]
removerFim 0 [] = []
removerFim 0 (a:as) = (a:as)
removerFim x [] = []
--se quiser remover a quant de elementos da lista, return vazia
removerFim x (a:as) = if ((tam (a:as) 0) == x) then []
else if ((tam (a:as) 0) < x) then [] --se quiser remover mais do que tem, volta lista vazia
else listaMenor ((tam (a:as) 0)-x) (a:as)

-- Main do programa
main = do 
--print ("remove os 2 ultimos elementos de [1,2,3,4,5,6]")
print (removerFim 2 [1,2,3,4,5,6])