dupli' = concatMap (replicate 2)

main = do
    print $ dupli' [8, 2, 2, 3]

    -- :run main     
    -- [8,8,2,2,2,2,3,3]