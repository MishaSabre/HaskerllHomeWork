    --insert symbol at array 

split :: [a] -> Int -> ([a], [a])
split []         _             = ([], [])
split l@(x : xs) n | n > 0     = (x : ys, zs)
                | otherwise = ([], l)
    where (ys,zs) = split xs (n - 1)

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys     1 = x:ys
insertAt x (y:ys) n = y:insertAt x ys (n-1) 

    
    

    -- example of output
    -- ghci> print $ insertAt 'x' "abcd" 2 
    -- "axbcd"
    -- ghci>
    
