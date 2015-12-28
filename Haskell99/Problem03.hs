--------------------------------------------------------------------------------
-- 3 Problem 3
--------------------------------------------------------------------------------
-- (*) Find the K'th element of a list. The first element in the list is number 1.
-- Example:
--    * (element-at '(a b c d e) 3)
-- c
-- Example in Haskell:
--    Prelude> elementAt [1,2,3] 2
--    2
--    Prelude> elementAt "haskell" 5
--    'e'


-------------------------------------------------------------------------------
-- My Solution
-------------------------------------------------------------------------------
elementAt :: [a] -> Int -> a
elementAt [] _       = error "Out of bounds error"
elementAt (x:_) 1    = x
elementAt (x:xs) y
    | y < 1              = error "Index out of bounds"
    | otherwise          = elementAt xs (y-1)