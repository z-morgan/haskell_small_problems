-- takes a list and the starting value of 0 as a two tuple, returns empty list and the length as two tuple
calcLen :: ([a], Integer) -> ([a], Integer)
calcLen ([], x) = ([], x)
calcLen ((p:xs), x) = calcLen (xs, x + 1)

-- pulls out the second value of a two tuple
extractLen :: ([a], Integer) -> Integer
extractLen (lst, x) = x

-- takes a list and returns the length
len :: [a] -> Integer
len lst = extractLen (calcLen (lst, 0))


-- takes the forward list, an empty list, and the length, and returns the reversed list
move :: ([a], [a], Integer) -> [a]
move (baseLst, newLst, 0) = newLst
move ((p:xs), newLst, ct) = move (xs, p:newLst, ct - 1)

-- takes the list, and returns the reversed list
rev :: [a] -> [a]
rev lst = move (lst, [], len lst)