bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight"
    | bmi <= 25.0 = "You're normal"
    | bmi <= 30.0 = "You're overweight"
    | otherwise   = "You're obese"


bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
    | bmi <= skinny = "You're underweight"
    | bmi <= normal = "You're normal"
    | bmi <= fat    = "You're overweight"
    | otherwise     = "You're obese"
    where bmi = weight / (height ^ 2)
          (skinny, normal, fat) = (18.5, 25.0, 30.0)
