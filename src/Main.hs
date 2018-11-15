import MagicTrick

main = do
    c <- readFile "A-small-practice.in"
    print (lines c)
    print "Test 1: "
    print $ getMagicTrick $ Mgt (Argt 1 [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) (Argt 2 [[1,2,3,6],[5,4,7,8],[9,10,11,12],[13,14,15,16]])

printCase :: (Show a,Eq a) => Int -> MagicTrick a -> IO()
printCase n mgt = do
    print $ "Case #" ++ show n ++": " ++ getMagicTrick mgt
{-
--Pasarlo al module MagicTrick
toMagicTrick :: [String] -> MagicTrick a
toMagicTrick xs = Mgt (getFstAgt xs) (getSndAgt xs)

--Pasarlo al module Arrangement
getFstAgt :: [String] -> Arrangement a
getFstAgt xs = Argt (read (head xs)) (createMatrix (tail xs))

getSndAgt :: [String] -> Arrangement a
getSndAgt xs =
    let ys = drop 5 xs in
    Argt (read (head ys)) (createMatrix (tail ys))
-}


--Pasarlo al module Matrix
--[String] : valores
-- fst Int: Rows
--snd Int: Columns
--PREC: size [String] = n * m
createMatrix :: [a] -> Int -> Int -> Matrix a
createMatrix xs n 0 = []
createMatrix xs 0 m = []
createMatrix xs n m =  take m xs : ( createMatrix (drop m xs) (n-1) m)
