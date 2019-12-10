--q3
--Verificar	se	um	número	é	primo.
--Ex.: > primo 17
--True
-- > primo 0
--False

obterFatores :: Int -> [Int]
obterFatores num = [x | x <- [1.. num-1], ((mod num x) == 0)]


primo :: Int -> Bool
primo num = if (length(obterFatores num) == 1) then True else False

main = do
print(primo(33))
