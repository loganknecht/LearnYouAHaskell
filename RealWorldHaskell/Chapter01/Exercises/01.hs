--------------------------------------------------------------------------------
-- 1. Enter the following expressions into ghci. What are their types?
--------------------------------------------------------------------------------
-- 5 + 8 3 
-- 88
-- it :: Num a => a

-- 3 * 5 + 82 
-- 97
-- it :: Num a => a

-- 2 + 4 
-- 6
-- it :: Num a => a

-- (+) 2 4 
-- 6
-- it :: Num a => a

-- sqrt 16 
-- 4.0
-- it :: Floating a => a

-- succ 6 
-- 7
-- it :: (Num a, Enum a) => a

-- succ 7
-- 8
-- it :: (Num a, Enum a) => a

-- pred 9
-- 8
-- it :: (Num a, Enum a) => a

-- pred 8
-- 7
-- it :: (Num a, Enum a) => a

-- sin (pi / 2)
-- 1.0
-- it :: Floating a => a

-- truncate pi
-- 3
-- it :: Integral b => b

-- round 3.5
-- 4
-- it :: Integral b => b

-- round 3.4
-- 3
-- it :: Integral b => b

-- floor 3.7
-- 3
-- it :: Integral b => b

-- ceiling 3.3
-- 4
-- it :: Integral b => b 