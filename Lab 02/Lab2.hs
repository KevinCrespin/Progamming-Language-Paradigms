import System.IO
import Data.List

listA = [1..30]
listB = [6,9..39]

listATail = last listA
listAHead = head listA

listASqrt =  [x ** 2 | x <- listA]

list2D =   [(i,j) | i <- [1..50], let j = i + 49]

list2DFiltered =  [(i,j) | i <- [1,3..50], let j = i + 50]
