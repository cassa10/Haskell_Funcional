module MagicTrick(module MagicTrick, module Arrangement) where

import Arrangement

data MagicTrick a = Mgt (Arrangement a) (Arrangement a) deriving Show

getMagicTrick :: (Show a, Eq a) => MagicTrick a -> String
getMagicTrick (Mgt argt1 argt2) = let ls = listSameElems (getVolunteerRow argt1) (getVolunteerRow argt2) in
    case length ls of
         0 -> "Volunteer cheated!"
         1 -> show (head ls)
         n -> "Bad magician!"
