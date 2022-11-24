-- write a function which takes a list of integers, and returns a list with only the even numbers

-- algo: if the list is empty, return empty list 
--       else, take the first element in the list
--         if that element is even
--            add it to the result of calling allEven on the tail
--         else, return the result of calling allEven on the tail

allEven [] = []
allEven lst = [x | x <- lst, even x]