--Substituir todos elementos de um determinado valor de uma lista de inteiros por um outro valor.

subs :: Integer -> Integer -> [Integer] -> [Integer]
subs x y [] = []
--verifica se o x eh igua ao a. se for, coloca y no lugar
-- e passa pra prox posicao da lista
subs x y (a:as) =  if (a==x) then [y] ++ subs x y as
-- se nao for igual, mantem e passa pro prox
else [a] ++ subs x y as

-- Main do programa
main = do 
--print ("troca o 1 por 0 em [1,2,1,3,1]")
print (subs 1 0 [1,2,1,3,1])