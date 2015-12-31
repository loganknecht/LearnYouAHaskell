--------------------------------------------------------------------------------
-- Problem
--------------------------------------------------------------------------------
-- Write a function that eliminates consecutive duplicates of list elements.

-- compress :: Eq a => [a] -> [a]

-- If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

-- For example:

-- > compress [2,2,2,1,2,2,3,3,3]
-- [2,1,2,3]

--------------------------------------------------------------------------------
-- Accumulator Solution
--------------------------------------------------------------------------------
-- Recursively iterate by checking the last element if it's differnt than the 
-- next element. If it is, add it to the accumulator list. At tail end return 
-- the list accumulated

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = compress' x xs []
    where
        compress' previousValue [] listToReturn = (listToReturn ++ [previousValue])
        compress' previousValue (x:xs) listToReturn = 
            compress' x xs (if previousValue /= x 
                                        then listToReturn ++ [previousValue] 
                                        else listToReturn)


