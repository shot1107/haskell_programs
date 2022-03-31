superimposeChar :: Char -> Char -> Char
superimposeChar xc yc = if xc == '.' && yc == '.' then '.' else '#'

superimposeLine :: [Char] -> [Char] -> [Char]
superimposeLine xl yl = [superimposeChar xc yc | (xc, yc) <- zip xl yl]

type Picture = [[Char]]
superimpose :: Picture -> Picture -> Picture
superimpose xp yp = [superimposeLine xl yl | (xl, yl) <- zip xp yp]
