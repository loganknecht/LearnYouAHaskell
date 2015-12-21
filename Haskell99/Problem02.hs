-------------------------------------------------------------------------------- 
-- 2 Problem 2
-------------------------------------------------------------------------------- 
-- (*) Find the last but one element of a list.
-- (Note that the Lisp transcription of this problem is incorrect.)
-- Example in Haskell:
--    Prelude> myButLast [1,2,3,4]
--    3
--    Prelude> myButLast ['a'..'z']
--    'y'


-------------------------------------------------------------------------------
-- My Solution
-------------------------------------------------------------------------------
-- Not sure why they didn't just call this penultimate...
penultimate :: [a] -> a
penultimate [] = error "An empty list was provided."
penultimate [x] = error "A list with one element was provided."
--penultimate (x:_) = x
--penultimate (x:_) = x
--penultimate (x:_) = x:xs


-- testiterate :: [a] -> a
testiterate [] = error "An empty list was provided"
testiterate [x] = error "A list with one element was provided"
testiterate (x:xs) = if length xs == 1 then x else testiterate(xs)

-- penultimate list = 
-- penultimate list = if length list > 0 then a
-- penultimate list = show (length list)
-- penultimate list = if length list == 1 then head list else penultimate (tail list)