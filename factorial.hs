import System.IO

-- Función para calcular el factorial recursivamente
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "Ingrese un número para calcular su factorial:"
    userInput <- getLine
    let n = read userInput :: Integer
    putStrLn ("El factorial de " ++ show n ++ " es " ++ show (factorial n))
