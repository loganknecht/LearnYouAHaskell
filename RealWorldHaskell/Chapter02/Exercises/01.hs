--------------------------------------------------------------------------------
-- 1. Haskell provides a standard function, last :: [a] -> a, that returns the 
-- last element of a list. From reading the type alone, what are the possible 
-- valid behaviours (omitting crashes and infinite loops) that this function 
-- could have? What are a few things that this function clearly cannot do?
--------------------------------------------------------------------------------
-- What are the possible valid behaviours (omitting crashes and infinite loops) 
-- that this function could have?

-- This function can take in a list of any single type, and return a value of that same type.

-----------------

-- What are a few things that this function clearly cannot do?
-- This function cannot take in a value that is not a list, and cannot return
-- a value that is a list.