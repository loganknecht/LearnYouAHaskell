{-# OPTIONS_GHC -Wall #-}
module HW01 where
-- I found a really helpful github here, particularly the most helpful portion was
-- seeing how to access iteratively the first index of a digit
-- https://github.com/TomPeters/haskell-homework/blob/master/Week01.hs

-- Exercise 1 -----------------------------------------

-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit number = read ((last (show number)):[])

-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
dropLastDigit number = read (init (show number))

-- Exercise 2 -----------------------------------------
toRevDigits :: Integer -> [Integer]
toRevDigits number = reverse(toDigitsList number)

toDigitsList :: Integer -> [Integer]
toDigitsList number
    | number < 1 = []
    | otherwise = toDigitsList (number `div` 10) ++ [ number `mod` 10]

-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [a] = [a]
doubleEveryOther (x:y:xs) = x : y * 2 : (doubleEveryOther xs)

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits [a] = sumDigit a 
sumDigits (x:xs) = (sumDigit x) + (sumDigits xs)

sumDigit :: Integer -> Integer
sumDigit number = if number < 10 then number else (sumDigit (number `div` 10)) + (number `mod` 10)

-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn number = if sumDigits(reverse(doubleEveryOther (toRevDigits number))) `mod` 10 == 0 then True else False

-- Exercise 6 -----------------------------------------

-- To move n discs (stacked in increasing size) from start peg to end peg using 
-- a spare peg as temporary storage

-- 1. move n − 1 discs from start peg to spare peg using end as temporary storage
-- 2. move the top disc from start peg to end peg 
-- 3. move n − 1 discs from spare peg to end peg using start peg as temporary storage.

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi numberOfDiscs startPeg endPeg sparePeg
    | numberOfDiscs == 0 = []
    | otherwise = (hanoi (numberOfDiscs - 1) startPeg sparePeg endPeg) ++ (startPeg, endPeg):[] ++ (hanoi (numberOfDiscs - 1) sparePeg endPeg startPeg) 