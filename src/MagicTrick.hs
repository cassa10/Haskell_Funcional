module MagicTrick(module MagicTrick, module Arrangement) where

import Arrangement

data MagicTrick a = Mgt (Arrangement a) (Arrangement a) deriving Show

--Hago un filter cuando retorna el result para filtrar el resultado cuando mi Estructura posee Strings o Chars 
getMagicTrick :: (Show a, Eq a) => MagicTrick a -> String
getMagicTrick (Mgt argt1 argt2) = 
    let ls = listSameElems (getVolunteerRow argt1) (getVolunteerRow argt2) in
    case length ls of
         0 -> "Volunteer cheated!"
         1 -> [x | x <- show(head ls) , x /= '"', x /= '\'' ]
         n -> "Bad magician!"

getCase :: Int -> MagicTrick String -> String
getCase n mgt = "Case #" ++ show n ++": " ++ getMagicTrick mgt ++ "\n"

-- PREC: Size list of MagicTricks must be <= number of parameter
getNCases :: Int -> [MagicTrick String] -> String
getNCases 0 xs = error("Number must be > 0")
getNCases n [] = error("Size of MagicTricks are not enough.")
getNCases n xs = getNCases' n 1 xs
 
getNCases' :: Int -> Int -> [MagicTrick String] -> String
getNCases' n 0 xs = error("Iterator must be > 0")
getNCases' n i [] = error("Size of MagicTricks are not enough.")
getNCases' n i (x:xs) = if n == i 
                            then getCase i x
                            else getCase i x ++ getNCases' n (i+1) xs 