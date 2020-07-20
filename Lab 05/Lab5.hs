add :: Int -> Int -> Int
add a b = a + b

add10 :: Int -> Int
add10 = (+10)

-- e.g add10 (add 5 5)

isLowerCase :: Char -> Bool
isLowerCase = (`elem` ['a' .. 'z'])

-- e.g isLowerCase 'L'

zipWith' :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
zipWith' _ [] _ _ = []
zipWith' _ _ [] _ = []
zipWith' _ _ _ [] = []
zipWith' f (x:xs) (y:ys) (z:zs) = (f x y z) : (zipWith' f xs ys zs)

-- e.g zipWith' (\x y z -> x * y * z) [1,2,3,4] [5,6,7,8] [9,10,11,12]

toTuple :: (Int -> Int) -> Int -> (Int, Int)
toTuple f n = (n, f n)

-- e.g toTuple (**) 5

listToTuple :: [Int] -> (Int -> Int) -> [(Int, Int)]
listToTuple [] _ = []
listToTuple (x:xs) f = toTuple f x : listToTuple xs f

-- e.g listToTuple [1,2,3] (^2)
