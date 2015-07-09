-------------------------------------------------------------------------------
-- 1 Problem 1
-------------------------------------------------------------------------------
-- (*) Find the last element of a list.
-- (Note that the Lisp transcription of this problem is incorrect.)
-- Example in Haskell:
--      Prelude> myLast [1,2,3,4]
--      4
--      Prelude> myLast ['x','y','z']
--      'z'

-------------------------------------------------------------------------------
-- My Solution
-------------------------------------------------------------------------------
-- Pretty sure this satisfies a form of the solution, but looking at the actual
-- solution suggested I'll try again.
 myLast :: [a] -> a
 myLast [] = error "An empty list was provided."
 myLast list = last list

-- Alternate Solution
-- myLast :: [a] -> a
-- myLast [] = error "An empty list was provided."
-- myLast [singletonList] = singletonList
-- myLast (_:list) = myLast list
-- From the suggestion of the solution... It adds this line to recursively call
-- the function created. This makes it so it's actually iterating through the
-- list. Personally I'd rather use the built in function 'last' for this. 