type Person = String
type Book   = String

type Database = [(Person, Book)]

exampleBase :: Database
exampleBase =
  [("Alice", "Tintin"), ("Anna", "Little Women"),
   ("Alice", "Asterix"), ("Rory", "Tintin")]

books :: Database -> Person -> [Book]
books database person = [b | (p, b) <- database, p == person]

borrowers :: Database -> Book -> [Person]
borrowers database book = [p | (p, b) <- database, b == book]

isBorrowed :: Database -> Book -> Bool
isBorrowed database book = (borrowers database book /= [])

numBorrowed :: Database -> Person -> Int
numBorrowed database person = length (books database person)