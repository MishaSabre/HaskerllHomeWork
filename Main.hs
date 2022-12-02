module Main (main) where

    --Output last element of array


    lengtht xs = sum[1 | _ <- xs]


    main :: IO ()
    main = do 
        print "Enter array"
        arr <- getLine
        let tmp = read arr :: [Int]
        let ans = tmp !! (lengtht tmp - 1)
        print ans 
