module Main (main) where

    --duplicate each char in array


    dupli xs = [ [x,x] | x <- xs, (x /= ' ') && (x /= ',') && (x /= '[') && (x /= ']')]


    main :: IO ()
    main = do 
        print "Enter array"
        arr <- getLine
        print arr
        let tmp = arr 
        let ans = dupli tmp
        print ans 
