module Matrix where

--Each index are rows and each index of each row are columns.
type Matrix a = [[a]]

-- [a] : values
-- n / fst Int: Rows
-- m / snd Int: Columns
--PREC: length [a] >= n * m
--Prop: Devuelve una matrix de los primeros n*m elementos y 
createMatrix :: [a] -> Int -> Int -> Matrix a
createMatrix xs n 0 = []
createMatrix xs 0 m = []
createMatrix xs n m =  take m xs : ( createMatrix (drop m xs) (n-1) m)

--Index of Rows starts at 1
getRow :: Matrix a -> Int -> [a]
getRow xss 0 = error("Rows doesnt exist")
getRow [] n = error("Rows Matrix < row called")
getRow (xs:xss) 1 = xs
getRow (xs:xss) n = getRow xss (n-1) 