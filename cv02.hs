import Data.Char
import Data.List


getLast :: [a] -> a
getLast [x] = x
getLast (_ : s) = getLast s

median :: [a] -> a
median [x] = x
median [x, _] = x
median (_ : s) = median (init s)

multiplyN :: Integer -> [Integer] -> [Integer]
multiplyN _ [] = []
multiplyN x (y : s) = x*y : multiplyN x s



sumset :: [Int] -> Int
sumset [] = 0
sumset (x : s) = sumset s + x

sums :: [[Int]] -> [Int]
sums [] = []
sums (s : t) = sumset s : sums t



evens :: [Integer] -> [Integer]
evens s = filter even s

toUpperStr :: String -> String
toUpperStr s = map toUpper s

multiplyEven :: [Integer] -> [Integer]
multiplyEven s = map (*2) (filter even s)



vowels :: [String] -> [String]
vowels [] = []
vowels (s:t) = (intersect "aeiouyAEIOUY" s) : vowels t

--Řešení bez Data.List:

isVowel :: Char -> Bool
isVowel c = elem "aeiouyAEIOUY"

nvowels :: [String] -> [String]
nvowels s = map (filter isVowel s)
--nebo tak nějak
