data Suit = Spades | Hearts deriving (Show)     -- a Suit type can have one of these two values
data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
type Card = (Rank, Suit)         
type Hand = [Card]                   -- the `type` keyword defines types composed of other types


value :: Rank -> Integer
value Ten = 1
value Jack = 2
value Queen = 3
value King = 4
value Ace = 5

cardValue :: Card -> Integer
cardValue (rank, suit) = value rank