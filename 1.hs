times n x = concat ( replicate n x )
 
--main: IO ()
--main = putStr "hello"
 
main = do
    putStrLn "GoTo Haskell"
    x <- getLine
    putStrLn x
--    putStrLn "юзер#$^&*&^%$#@#$%^&*"$ replicate
 
--time's n x = concat $ replicate n $ putStrLn x
 
data AA = A | G | C | T deriving Show
pair T = A
pair A = T
 
pair G = C
pair C = G
--AA' x = concat $ map pair = x

fact 1 = 1
fact x = x * fact ( x - 1 )
