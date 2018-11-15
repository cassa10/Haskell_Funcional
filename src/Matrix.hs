module Matrix where

--Each index are rows and each index of each row are columns.
type Matrix a = [[a]]

--Index of Rows starts at 1
getRow :: Matrix a -> Int -> [a]
getRow xss 0 = error("Rows doesnt exist")
getRow [] n = error("Rows Matrix < row called")
getRow (xs:xss) 1 = xs
getRow (xs:xss) n = getRow xss (n-1) 