--Verificar se todos os elementos de uma lista são distintos.

verificar :: Integer -> [Integer] -> Bool
verificar x [] = True
--verifica se o x eh igua ao a. se for, nao eh distinto
verificar x (a:z) =  if (a==x) then False
else if (a/=x) then  verificar x z --do contrario, olha o prox elemento
else verificar x z

distintos :: [Integer] -> Bool
distintos [] = True
distintos (a:z) = if ((verificar a z)== True && (distintos z)==True) then True
else False

-- Main do programa
main = do 
--print ("olha se todos os elementos sao diferentes em [1,2,4,2,5]")
print (distintos [1,2,4,2,5])