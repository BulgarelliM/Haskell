--11) Linearizar uma lista de listas de inteiros.
--Ex.: > linearizar [ [1,2], [5], [0,4,2] ]
--[1,2,5,0,4,2]

linearizar :: [[Integer]] -> [Integer]
linearizar [] = [] --se vazia, continua vazia
linearizar a = [y | b <- a, y <- b] -- y recebe b que recebe a

-- Main do programa
main = do 
--print ("Pega listas variadas e junta tudo em uma lista so [ [1,2], [5], [0,4,2] ]")
print (linearizar [ [1,2], [5], [0,4,2] ])