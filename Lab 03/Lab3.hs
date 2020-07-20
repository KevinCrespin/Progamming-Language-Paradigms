getFirstandLast :: String -> [Char]
getFirstandLast s = head s : last s : []

getGreater :: Float -> Float -> Float
getGreater x y
            | x > y = x
            | otherwise = y

getFactorial :: Int -> Int
getFactorial 0 = 1
getFactorial n = n * getFactorial (n - 1)

add'em :: (Num a) => a -> a -> a
add'em x y = x + y

determine :: Int -> String
determine n
            | n == 1 = "One"
            | n == 2 = "Twice"
            | n == 3 = "Thrice"
            | otherwise = "Don't know how to say that in English."

raised :: Int -> Int -> Int
raised _ 0 = 1
raised 0 _ = 0
raised x y
            | even y = (raised x (y `div` 2)) * (raised x (y `div` 2))
            | odd y = x * (raised x (y - 1))

multiplyFirst3 :: [Int] -> Int
multiplyFirst3 [] = 0
multiplyFirst3 a
            | length a < 3 = product a
            | otherwise = (a !! 0) * (a !! 1) * (a !! 2)
