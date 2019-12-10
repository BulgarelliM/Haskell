--5) Verifique se um número é perfeito, isto é, é igual a soma de seus divisores (exceto o próprio número).
--Ex.: > perfeito 28 -- 28=1+2+4+7+14
--True

soma:: Integer -> Integer -> Integer
soma a b = a + b

-- soma os divisores
divide :: Integer -> Integer -> Integer -> Integer
-- se for divisivel, chama a soma
divide m d s = if (d < m) then
              if (mod m d == 0) then divide m (d+1) (soma d s) 
              else divide m (d+1) s
            else s

-- Um num perfeito é igual a soma de seus divisores (exceto o próprio número)
perfeito :: Integer -> Bool
perfeito m = if ((divide m 1 0) == m) then True
else False

-- Main do programa
main = do 
--print ("verifica se o numero 28 eh perfeito")
print (perfeito 28)