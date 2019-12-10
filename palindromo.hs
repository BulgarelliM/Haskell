--9) Verificar se uma lista de inteiros é palíndromo.
--Ex.: > palindromo [1,2,3,4,3,2,1]
--True

inverte :: [Integer] -> [Integer]  
inverte [] = []  
inverte (a:ab) = inverte ab ++ [a]

-- verifica se eh igual
verificar :: [Integer] -> Bool
verificar [] = True
--chama a funcao que inverte a lista
-- se a lista invertida for identica a lista normal, TRUE
verificar (a:as) =  if ((inverte (a:as)) == (a:as)) then True
else False

-- Um palindromo eh uma lista que eh igual ao seu inverso
palindromo :: [Integer] -> Bool
palindromo [] = True
palindromo (a:as) = if ((verificar (a:as) ) == False) then False
else  True

-- Main do programa
main = do 
--print ("verifica se eh palindromo [1,2,3,4,3,2,1]")
print (palindromo [1,2,3,4,3,2,1])