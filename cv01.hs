tell :: Int -> String
tell 1 = "one"
tell 2 = "two"
tell x = if even x then "even" else "odd"
tell _ = "some number" --nikdy se neprovede

lAndA :: Bool -> Bool -> Bool
-- lAndA a b = if a == False || b == False then False else True
lAndA a b = if a then b else False

lAndB :: Bool -> Bool -> Bool
lAndB True True = True
lAndB _ _ = False

{-
 discriminant ::

roots :: Int -> Int -> Int -> Int
roots a b c = -- let d = discriminant a b c in
  if d < 0 then 0 else if d == 0 then 1 else 2
    where
      d = discriminant a b c
-}

power :: Double -> Int -> Double
power _ 0 = 1
power z n = if n < 0 then error "chyba - zaporne n"
                     else z * (power z (n-1))

mod3 :: Int -> Int
mod3 0 = 0
mod3 1 = 1
mod3 2 = 2
mod3 x = mod3 (x - 3)

ispow2 :: Int -> Bool
ispow2 0 = False
ispow2 1 = True
ispow2 2 = True
ispow2 n = if even x then ispow2 (n/2) else False
