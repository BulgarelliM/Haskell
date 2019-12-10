remove :: [Int] -> [Int]
remove [x] = []
remove (x:xs) = if (x == (topoPilha (x:xs))) then xs else x :(remove xs)

somaPilha :: [Int] -> Int
somaPilha [] = 0
somaPilha (a:as) = a + somaPilha(as)

topoPilha :: [Int] -> Int
topoPilha [x] = x
topoPilha (x:xs) = topoPilha xs

somaParcial :: [Int] -> [Int]
somaParcial [] = []
somaParcial (a:as) = somaParcial(remove (a:as)) ++ [a+somaPilha(as)]

main = do 
print (somaParcial [1,2,3,4])