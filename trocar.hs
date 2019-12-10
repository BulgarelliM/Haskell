--15) Desenvolver uma solução para um quiosque de saque eletrônico que, para um determinado valor, deve entregar o menor número de cédulas de R$1, R$5, R$10, R$50 e R$100, da menor para a maior.
--Ex.: > trocar 162
--[1, 1, 10, 50, 100]

insereNaLista :: [[Integer]] -> [Integer]
insereNaLista [] = [] --se vazia, continua vazia
insereNaLista a = [y | b <- a, y <- b] -- y recebe b que recebe a

realizaTroco :: Integer -> [Integer] -> [Integer]
-- se for possivel a subtracao, insere na lista e chama novamente
realizaTroco m (a:as) = if (m - 100 >= 0) then (realizaTroco (m-100) (insereNaLista [[100],(a:as)]))
             else if (m - 50 >= 0) then (realizaTroco (m-50) (insereNaLista [[50],(a:as)]))
             else if (m - 10 >= 0) then (realizaTroco (m-10) (insereNaLista [[10],(a:as)]))
             else if (m - 5 >= 0) then (realizaTroco (m-5) (insereNaLista [[5],(a:as)]))
             else if (m - 1 >= 0) then (realizaTroco (m-1) (insereNaLista [[1],(a:as)]))
             else (a:as)
realizaTroco m [] = if (m - 100 >= 0) then (realizaTroco (m-100) (insereNaLista [[100],[]]))
             else if (m - 50 >= 0) then (realizaTroco (m-50) (insereNaLista [[50],[]]))
             else if (m - 10 >= 0) then (realizaTroco (m-10) (insereNaLista [[10],[]]))
             else if (m - 5 >= 0) then (realizaTroco (m-5) (insereNaLista [[5],[]]))
             else if (m - 1 >= 0) then (realizaTroco (m-1) (insereNaLista [[1],[]]))
             else []

trocar :: Integer -> [Integer]
trocar m = realizaTroco m [] 

-- Main do programa
main = do
print (trocar 162)