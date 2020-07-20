addtolist :: Int -> [[Int]] -> [[Int]]
addtolist _ [] = []
addtolist n (x:xs) = (n:x) : (addtolist n xs)

powerset :: [Int] -> [[Int]]
powerset [] = [[]]
powerset (x:xs) = (addtolist x (powerset xs)) ++ (powerset xs)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- 1:2:[] -> [1,2]
-- [1]:[2];[] -> [[1],[2]]
-- (x:xs) -> x = head, xs = tail
