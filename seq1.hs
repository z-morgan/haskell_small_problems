{- 

• Write a function that takes an argument x and returns a 
lazy sequence that has every third number, starting with x. 
Then, write a function that includes every fifth number, beginning with y. 
Combine these functions through composition 
to return every eighth number, beginning with x + y. 

-}

step3 x = [x, x + 3 ..]

step5 y = [y, y + 5 ..]

combined x y = zipWith (+) (step3 x) (step5 y)