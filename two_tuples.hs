{-
• Write a function that builds two-tuples with all possible combinations of two of the colors 
black, white, blue, yellow, and red. Note that you should include only one of (black, blue) and (blue, black). 
-}

colors = ["black", "white", "blue", "yellow", "red"]

takeTwo = [(a, b) | a <- colors, b <- colors, a < b]