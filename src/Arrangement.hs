module Arrangement(module Arrangement,module Matrix) where
import Matrix

data Arrangement a = Argt Int (Matrix a) deriving Show

getVolunteerRow :: Arrangement a -> [a]
getVolunteerRow (Argt x m) = getRow m x 

sizeSameElems ::Eq a => [a] -> [a] -> Int
sizeSameElems [] ys = 0
sizeSameElems (x:xs) ys = 
    if any ((==) x) ys 
        then 1 + sizeSameElems xs ys
        else sizeSameElems xs ys

listSameElems :: Eq a => [a] -> [a] -> [a]
listSameElems [] ys = []
listSameElems (x:xs) ys =
    if any ((==) x) ys 
        then x:listSameElems xs ys
        else listSameElems xs ys

getAgt :: Int -> [String] -> Arrangement String
getAgt n xs = Argt n (createMatrix xs 4 4)