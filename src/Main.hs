import MagicTrick

main = do
    input <- readFile "A-small-practice.in"
    let strings = words input
    let output = getNCases (headAsInt strings) $ extractNMagicTricks (headAsInt strings) (tail strings)
    writeFile "output.txt" output

--PREC: Size List of values = 34
extractMagicTrick :: [String] -> MagicTrick String
extractMagicTrick [] = error("Values are not enough")
extractMagicTrick xs = 
    let ys = drop 17 xs in
    Mgt (getAgt (headAsInt xs) (take 16 (tail xs))) (getAgt (headAsInt ys) (tail ys))

extractNMagicTricks :: Int -> [String] -> [MagicTrick String]
extractNMagicTricks 0 xs = []
extractNMagicTricks n [] = error("Values are not enough")
extractNMagicTricks n xs = extractMagicTrick (take 34 xs) : (extractNMagicTricks (n-1) (drop 34 xs))

headAsInt :: [String] -> Int
headAsInt sts = read(head sts ):: Int



