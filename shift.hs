add :: [Int] -> [Int]
add (x:xs) = xs ++ [x]

shift :: Int -> [Int] -> [Int]
shift 0 x = x
shift num x
 | (num > 0) = shift (num-1) (add x)

main = do 
print (shift 3 [1,5,6,7,3,4,1])