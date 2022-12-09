

    --Replicate the elements of a list a given number of times. 

    repli :: [a] -> Int -> [a]
    repli xs n = concat $ map (replicate n) xs


    --example of output
    --ghci> print $ repli "abcd" 3
    --"aaabbbcccddd"