{-

• Write a list comprehension to build a childhood multiplication table. 
The table would be a list of three-tuples where the first two are integers 
from 1–12 and the third is the product of the first two. 


A:
make a list from 1-12

-}

nums = [1..12]

timesTable = [(a, b, a * b) | a <- nums, b <- nums]