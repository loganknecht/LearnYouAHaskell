--------------------------------------------------------------------------------
-- 3. The words function counts the number of words in a string. Modify the WC.hs 
--    example to count the number of words in a file. 
--------------------------------------------------------------------------------
-- file: ch01/WC.hs
-- lines beginning with "--" are comments.

main = interact wordCount
    where wordCount input = show (length (words input)) ++ "\n"