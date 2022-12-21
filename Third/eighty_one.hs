--Path from one node to another one 

paths :: Eq a =>a -> a -> [(a,a)] -> [[a]] 
paths i j k 
    | i == j = [[j]]
    | otherwise = [
        i:path | edge<-k, (fst edge) == i,
        path<-(paths (snd edge) j [e|e<-k, e/=edge])
    ];
    
    -- paths 1 4 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
    -- [[1,2,3,4],[1,3,4]]
    
