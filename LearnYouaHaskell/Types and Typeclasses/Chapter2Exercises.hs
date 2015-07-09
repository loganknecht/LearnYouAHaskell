removeNonUppercase :: String -> String
removeNonUppercase string = [ c | c <- string, c `elem` ['A'..'Z']]


circumfrence :: Float -> Float
circumfrence radius = 2 * pi * radius

circumfrence' :: Double -> Double
circumfrence' radius = 2 * pi * radius
