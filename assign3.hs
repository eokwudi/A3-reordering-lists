import Data.List
import Data.Ord

data Choose = Sort Char | Permute [Int]

goingUp :: Ord b => [b] -> [b]
goingUp n = 
        sort n
        
goingDown :: Ord b => [b] -> [b]
goingDown n = 
          sortDesc n
          where sortDesc = sortBy(comparing Down)

osort :: Ord c => Char -> [c] -> [c]
osort n m = 
      if n == 'f' then goingUp m
      else if n == 'b' then goingDown m
      else []

cut :: [a] -> Int -> a
cut q n = 
    q !! b
    where b = n - 1
    
permute :: (Ord b) => [Int] -> [b] -> [b]
permute [] x = []
permute x [] = []
permute (n:ns) x =
        if z > b then []
        else [y] ++ a
        where y = cut x n
              z = n
              a = permute ns x
              b = length x


reorder :: (Ord a) => Choose -> [a] -> [a]
reorder (Sort a) b = osort a b
reorder (Permute c) d = permute c d    

citation :: String -> String
citation a = 
         "Some information of sortby function found at https://ro-che.info/articles/2016-04-02-descending-sort-haskell"
