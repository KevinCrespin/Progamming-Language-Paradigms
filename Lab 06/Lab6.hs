tupleProduct :: [(Int, Int)] -> [Int]
tupleProduct = map $ (\(a,b) -> a * b)

-- e.g tupleProduct [(1,2),(3,4),(5,6),(7,8),(9,10)]

cumulativeSums :: [Int] -> [Int]
cumulativeSums a = tail $ scanl (+) 0 a

-- e.g cumulativeSums [1,2,3,4,5,6,7,8,9,10]

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f = f . f . f

-- e.g applyThrice (^2) 2

isLowerCase :: Char -> Bool
isLowerCase = (`elem` ['a' .. 'z'])

-- e.g isLowerCase 'a'
