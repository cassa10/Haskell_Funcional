import MagicTrick

main = do
    c <- readFile "A-small-practice.in"
    print (lines c)
    print "Test 1: "
    print $ getMagicTrick $ Mgt (Argt 1 [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]) (Argt 2 [[1,2,3,6],[5,4,7,8],[9,10,11,12],[13,14,15,16]])


