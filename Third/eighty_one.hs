--Path from one node to another one 

paths :: Eq a =>a -> a -> [(a,a)] -> [[a]] 
paths i j k 
    | i == j = [[j]]
    | otherwise = [
        i:path | edge<-k, (fst edge) == i,
        path<-(paths (snd edge) j [e|e<-k, e/=edge])
    ];