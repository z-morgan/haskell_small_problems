{-
given 5 states, where AB /= MI, TN, GA, FL
and MI /= TN
and TN /= GA
and GA /= FL

and the colors red, white, blue

find a series of 5 two-tuples, where each tuple has a state and a color, and the rules above are satistifed

-}

states = ["AB", "MI", "TN", "GA", "FL"]
colors = ["red", "white", "blue"]

findColors = [(s, c) | s <- states, c <- colors, ]
