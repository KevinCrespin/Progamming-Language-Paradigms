import System.IO
import Data.List

maxInt = maxBound :: Int

arithmetic =  ((4 + 5 - 4) /5) * 1
remainder = 5 `mod` 5
arithmeticNeg = 5 + (-4)

n = 25 :: Int -- Constant

sqrtOfn = sqrt(fromIntegral n)
piValue = pi
ePow9 = exp 9
lofOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVall = ceiling 9.999
florVal = floor 9.999

trueAndFalse = True && False
trueORFalse = True || False
notTrue = not(True)

primeNumbers = [3,5,7,11]
arr = [1..100] -- Create Array from Int to Int
evenArr = [2, 4..100] -- Create Array of even numbers frn Int to Int
letterList = ['A','C'..'Z'] -- Create Array of every other char in alphabet
sumArr = sum [1..100] -- Sum of all numbers in Array
morePrimes = primeNumbers ++ [13,17,19,23] -- Concatenate Arrays
favNums = 2 : 7 : 21 : 66 : [] -- Combine Nums in Array
multiList = [[1,2,3],[11,22,33]] -- Nested Arrays
morePrimes2 = 2 : morePrimes -- Add an item to the begining of Array
lenghtPrimes = length morePrimes2 -- get lenght of Array
reversePrime = reverse morePrimes2 -- reverse Array
isListEmpty = null morePrimes2 -- Check if list is empty
secondPrime = morePrimes2 !! 1 -- get item at index 1 of Array
firstPrime = head morePrimes2 -- get first item of Array
lastPrime = last morePrimes2 -- get last item of Array
primeInit = init morePrimes2 -- get all except last item of Array
first3Primes = take 3 morePrimes2 -- get an amount of items from Array
remove3Primes = drop 3 morePrimes2 -- remove an amount of items from Array
is7inPrimes = 7 `elem` morePrimes2 -- check if an item is in Array
maxPrime = maximum morePrimes2 -- get max item in Array
minPrime = minimum morePrimes2 -- get min item in Array
productOfArr = product arr -- Product of all numbes in Array
infinPow10 = [10,20..] -- infinite Array (Create until needed)
many2s = take 10 (repeat 2) -- generate 10 2 in Array
many3s = replicate 10 3 -- generate 10 3 in Array
cycleList = take 10 (cycle [1,2,3,4,5]) -- cycle through an arry till 10 items been displayed

listTimes2 = [x * 2 | x <- [1..10]] -- Multiple every element in [1..10] times 2
