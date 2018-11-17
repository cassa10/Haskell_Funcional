import MagicTrick

main = do
    c <- readFile "A-small-practice.in"
   -- print $ lines c
    --print "Testing reading:"
    --print $ (read ( head (lines c) ) :: Int)
    --print "Test 1: "
   -- print $ getMagicTrick $ Mgt (Argt 1 [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) (Argt 2 [[1,2,3,6],[5,4,7,8],[9,10,11,12],[13,14,15,16]])
    --print getFstAgt 1 ["12 10 11 3","4 2 16 8","1 14 9 6","5 13 15 7"]
    print $ getFstAgt 1 (concatMap words ["12 10 11 3","4 2 16 8","1 14 9 6","5 13 15 7"])
    --writeFile "test.txt"  $ show (read ( head (lines c) ) :: Int)

printCase :: (Show a,Eq a) => Int -> MagicTrick a -> IO()
printCase n mgt = do
    print $ "Case #" ++ show n ++": " ++ getMagicTrick mgt


-- --Pasarlo al module MagicTrick
-- toMagicTrick :: [String] -> MagicTrick a
-- toMagicTrick xs = Mgt (getFstAgt xs) (getSndAgt xs)

--Pasarlo al module Arrangement
getFstAgt :: Int -> [String] -> Arrangement String
getFstAgt n xs = Argt n (createMatrix xs 4 4)

-- getSndAgt :: [String] -> Arrangement a
-- getSndAgt xs =
--     let ys = drop 5 xs in
--     Argt (read (head ys)) (createMatrix (tail ys))



