
    --print massive in range from a to b

range' :: Int -> Int -> [Int]
range' a b  
    | a > b = []
    | a == b = [a]
    |otherwise = a : range' (a+1) b

    --example of output
    --ghci> print $ range' 3 7
    --[3,4,5,6,7]