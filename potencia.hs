--1) Defina uma função recursiva para o cálculo de potência de doisnúmeros inteiros, onde o primeiro número é elevado ao segundo.

-- Programa que faz potencia
pot :: Integer -> Integer -> Integer
pot m 0 = 1
pot m 1 = m
pot m potencia = m * pot m (potencia - 1)

-- Main do programa
main = do 
print (pot 2 3) -- Chamada da funcao