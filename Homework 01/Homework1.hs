import System.IO
import System.Environment 

-- Define data types

data Student = Student {
firstname :: String,
lastname :: String,
major :: String,
age :: Integer
} deriving (Show, Eq, Read)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

-- Binary Search tree

makeNode :: Student -> Tree Student
makeNode s = Node s EmptyTree EmptyTree

treeInsert :: Student -> Tree Student -> Tree Student
treeInsert s EmptyTree = makeNode s
treeInsert s (Node a left right)
    | (age s == age a) = Node s left right
    | (age s < age a)  = Node a (treeInsert s left) right
    | (age s > age a)  = Node a left (treeInsert s right)

treeElem :: Integer -> Tree Student -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
    | (x == age a) = True
    | (x < age a)  = treeElem x left
    | (x > age a)  = treeElem x right

-- Program (Call from command line with args. This will crash if arguments not given) E.g ...\Homework1 filename (age to be searched)

main = do
    args <- getArgs
    file <- readFile (args !! 0)
    let age = (args !! 1)
    let tree = makeTree $ makeStudentList $ makeListOfList $ words' (=='\n') file
    putStr "Search a student with age: "
    putStrLn age
    putStr "Student found? "
    print $ treeElem (read age :: Integer) tree
    putStrLn "\nE.C: In-order traversal stored as [String]\n"
    print $ convertStudentToString $ convertTreeToListInOrder tree
  
-- Program (Call main from ghci) This is a more interactive version with the filename hardcoded

-- main = do
--   file <- readFile "Students.csv"
--   let tree = makeTree $ makeStudentList $ makeListOfList $ words' (=='\n') file
--   putStr "Search a student with age: "
--   age <- getLine
--   putStr "Student found? "
--   print $ treeElem (read age :: Integer) tree
--   putStr "Input [1] to search again, [0] to end the program, anything else to show E.C: "
--   input <- getLine
--   if input == "1"
--     then main
--   else if input == "0"
--     then return()
--   else do
--     putStrLn "\nE.C: In-order traversal stored as [String]\n"
--     print $ convertStudentToString $ convertTreeToListInOrder tree

-- Create [Student]

words' :: (Char -> Bool) -> String -> [String]
words' bool string = case dropWhile bool string of
                "" -> []
                string' -> w : words' bool string''
                      where (w, string'') = break bool string'

makeListOfList :: [String] -> [[String]]
makeListOfList [] = []
makeListOfList (x:xs) = words' (==',') x : makeListOfList xs

makeStudentList :: [[String]] -> [Student]
makeStudentList [] = []
makeStudentList (x:xs) = Student (x!!0) (x!!1) (x!!2) (read (x!!3) :: Integer) : makeStudentList xs

-- Create Tree

makeTree :: [Student] -> Tree Student
makeTree students = foldr treeInsert EmptyTree $ reverse students

-- E.C

convertTreeToListInOrder :: Tree Student -> [Student]
convertTreeToListInOrder EmptyTree = []
convertTreeToListInOrder (Node student left right) = (convertTreeToListInOrder left) ++ [student] ++ (convertTreeToListInOrder right)

convertStudentToString :: [Student] -> [String]
convertStudentToString [] = []
convertStudentToString (x:xs) = ((firstname x) ++ ", " ++ (lastname x) ++ ", " ++ (major x) ++ ", " ++ (show $ age x)) : convertStudentToString xs
