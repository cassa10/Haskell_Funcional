module MagicTrick(module MagicTrick, module Arrangement) where

import Arrangement

data MagicTrick a = Mgt (Arrangement a) (Arrangement a)

getMagicTrick :: (Show a, Eq a) => MagicTrick a -> String
getMagicTrick (Mgt argt1 argt2) = getTrick argt1 argt2
