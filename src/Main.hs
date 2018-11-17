import MagicTrick

main = do
    c <- readFile "A-small-practice.in"
   -- print $ lines c
    --print "Testing reading:"
    --print $ (read ( head (lines c) ) :: Int)
    --print "Test 1: "
   -- print $ getMagicTrick $ Mgt (Argt 1 [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) (Argt 2 [[1,2,3,6],[5,4,7,8],[9,10,11,12],[13,14,15,16]])
    --print getFstAgt 1 ["12 10 11 3","4 2 16 8","1 14 9 6","5 13 15 7"]
    --print $ concatMap words ["1","12 10 11 3","4 2 16 8","1 14 9 6","5 13 15 7"]
    printCase 1 (extractMagicTrick (concatMap words ["1","12 10 11 3","4 2 16 8","1 14 9 6","5 13 15 7","1","10 11 12 3","7 5 8 15","13 2 9 16","6 1 14 4"]))
    --writeFile "test.txt"  $ show (read ( head (lines c) ) :: Int)

printCase :: (Eq a, Show a) => Int -> MagicTrick a -> IO ()
printCase n mgt = print $ "Case #" ++ show n ++": " ++ getMagicTrick mgt


-- --Pasarlo al module MagicTrick
-- toMagicTrick :: [String] -> MagicTrick a
-- toMagicTrick xs = Mgt (getFstAgt xs) (getSndAgt xs)

--Pasarlo al module Arrangement
getAgt :: Int -> [String] -> Arrangement String
getAgt n xs = Argt n (createMatrix xs 4 4)

extractMagicTrick :: [String] -> MagicTrick String
extractMagicTrick xs = Mgt (getAgt (headAsInt xs) (take 16 (tail xs))) (getAgt (headAsInt (drop 17 xs)) (tail(drop 17 xs)))

--separateArrangements :: [String]

headAsInt :: [String] -> Int
headAsInt sts = read(head sts ):: Int

{-
separarlo en lines,
tomar el tamaño del arrangement



-}



