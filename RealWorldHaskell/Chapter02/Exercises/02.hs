--------------------------------------------------------------------------------
-- 2. Write a function lastButOne, that returns the element before the last. 
--------------------------------------------------------------------------------

-- This first solution will be done using if expressions
lastButOne xs = if (length xs) > 2
                then lastButOne (tail xs)
                else 
                    head xs