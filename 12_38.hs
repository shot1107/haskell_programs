import Prelude hiding(Word)

type Doc = String
type Line = String
type Word = String

numWords :: (Int, Line) -> [(Int, Word)]
numWords (number, line) = [(2, "fdsfds"), (2, "fdsf"), (3, "ddd")]

allNumWords :: [(Int, Line)] -> [(Int, Word)]
allNumWords = (filter (\x -> (length (snd x)) >= 4)) . concat . map numWords