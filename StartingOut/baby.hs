-- functions cannot be capitalized
doubleMe x = x + x

-- doubleUs x y = x*2 + y*2
doubleUs x y = (doubleMe x) + (doubleMe y)

doubleNumberLessThanThreshold numberToDouble threshold = if (numberToDouble > threshold)
                                                            then numberToDouble
                                                            else doubleMe numberToDouble

-- string declarations are still considered a function?
sonicName = "Sonic"
sonicTheHedgehog = "My name is " ++ sonicName ++ ". I am faster than sound. I keep on jumping around."

-- Can set variables via the interpretter using the 'let' keywords
-- ------------------------------
-- EXAMPLE:
-- ------------------------------
-- ghci> let lostNumbers = [4,8,15,16,23,42]  
-- ghci> lostNumbers
-- [4,8,15,16,23,42]

-- to declare a list use solid brackets
oneToFour = [1, 2, 3, 4]
fiveToEight = [5, 6, 7, 8]
nineToTwelve = [9, 10, 11, 12]
-- concatenating lists just requires using the '++' characters
oneToTwelve = oneToFour ++ fiveToEight ++ nineToTwelve
-- To add to the front of the list use the character ':' this is called the cons character
zeroToTwelve = 0:oneToTwelve

-- To remove from list use the characters '!!', 0 indexed of course
sonicLetter = sonicTheHedgehog !! 11

-- Can get the first element of a list with 'head'
firstLetter = head sonicTheHedgehog

-- Can get the remainder of a list with 'tail'
remainingList = tail sonicTheHedgehog

-- Can get the last element of a list with 'last'
lastElement = last sonicTheHedgehog

-- Can get the inital elements of a list and ignore the last element with 'init'
firstElements = init sonicTheHedgehog

-- You can't perform these operations on empty lists or lists that may have an out of bounds exception

-- To get the size of the list use 'length'
songLength = length sonicTheHedgehog

-- To check if list is emtpy 'null'
emptyList = []
isListEmpty = null emptyList
-- This doesn't work for some reason... not quite sure how to concatenate a bool and a string
-- outputEmptyList = "Is the list empty: " ++ isListEmpty

