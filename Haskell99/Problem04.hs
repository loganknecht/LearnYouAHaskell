--------------------------------------------------------------------------------
-- 4 Problem 4
--------------------------------------------------------------------------------
-- (*) Find the number of elements of a list.

-- Example in Haskell:

-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

-------------------------------------------------------------------------------
-- My Solution
-------------------------------------------------------------------------------
myLength :: [a] -> Int
myLength [] = 0
myLength a = length a

myLengthRecurse :: [a] -> Int
myLengthRecurse [] = 0
myLengthRecurse (x:xs) = 1 + myLengthRecurse xs

myLengthAccumulator :: [a] -> Int
myLengthAccumulator list = myLengthAccumulator' list 0 
    where
        myLengthAccumulator' [] n = n
        myLengthAccumulator' (_:xs) n = myLengthAccumulator' xs (n + 1)