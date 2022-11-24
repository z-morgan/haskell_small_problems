sort [] = []
sort (p:xs) = (sort lesser) ++ [p] ++ (sort greater)
    where 
        lesser = filter (< p) xs
        greater = filter (>= p) xs


{-

• Write a sort that takes a list and a function that compares its two arguments and then returns a sorted list. 

-}


sortBy compare [] = []
sortBy compare (p:xs) = (sortBy compare lesser) ++ [p] ++ (sortBy compare greater)
    where 
        lesser = [x | x <- xs, compare x p]
        greater = [x | x <- xs, not (compare x p)]