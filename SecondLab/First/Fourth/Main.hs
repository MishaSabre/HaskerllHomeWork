module Main (main) where

    --Find the number of elements of a list. 


    lengtht xs = sum[1 | _ <- xs]


    main :: IO ()
    main = do 
        print "Enter array"
        arr <- getLine
        let tmp = read arr :: [Int]
        let ans = lengtht tmp 
        print ans 
