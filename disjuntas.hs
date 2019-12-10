--q8
--Verificar se duas listas são disjuntas.
--Ex.: > disjuntas [1,2,3] [5,4,6,0]
--True

elemento :: Int -> [Int] -> Bool
elemento x [] = False
elemento x (a:as) = if (x /= a) then elemento x as else True

disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] [] = False
disjuntas [] b = True
disjuntas b [] = True

disjuntas (a:as) b = if ((elemento a b) == True) then False else True

main = do
print(disjuntas [1,2,3] [5,4,6,0])
