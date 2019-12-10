-- q2
--Calcular	o	somatório dos	elementos	ímpares de	uma	lista	de	inteiros.
 --Ex.: > somaImpares [1,3,2,7,4,6,5] -- 16=1+3+7+5
 --16
somaImpares :: [Int] -> Int --recebe uma lista e retorna um inteiro
somaImpares [] = 0 --condicao vazia 
somaImpares (a:x) = if mod a 2 /= 0 then a + somaImpares(x) else somaImpares(x)

main = do
print(somaImpares[1,2,3,5,7])

