data TeamScore = Score Int

instance Eq TeamScore where
  (Score x) == (Score y) = x == y
  
  a /= b = not(a == b)
