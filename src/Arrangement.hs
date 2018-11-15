module Arrangement where
import Matrix

data Arrangement a = Argt Int (Matrix a)

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

getTrick :: (Show a, Eq a) => Arrangement a -> Arrangement a -> String
getTrick argt1 argt2 =
    let ls = listSameElems (getVolunteerRow argt1) (getVolunteerRow argt2) in
    case length ls of
         0 -> "Volunteer cheated!"
         1 -> show (head ls)
         n -> "Bad magician!"