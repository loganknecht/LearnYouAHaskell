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
--luhn :: Integer -> Bool
--luhn = undefined

-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
--type Peg = String
--type Move = (Peg, Peg)

--hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
--hanoi = undefined