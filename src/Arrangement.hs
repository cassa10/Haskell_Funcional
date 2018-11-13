type Matrix a = [[a]]

data Arrangement a = Argt a (Matrix a)

--Index of Rows starts at 1
getRow :: Matrix a -> Int -> [a]
getRow xss 0 = error("Rows doesnt exist")
getRow [] n = error("Rows Matrix < row called")
getRow (xs:xss) 1 = xs
getRow (xs:xss) n = getRow xss (n-1) 


--PREC: 
getVolunteerRow :: Arrangement Int -> [Int]
getVolunteerRow (Argt x m) = getRow m x 
