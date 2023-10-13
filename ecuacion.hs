calcularRaiz :: Double -> Double -> Double -> Double
calcularRaiz a b c = sqrt ((a / (b - c)) * (b / (b - c)) * (c / (b - c)))

main :: IO ()
main = do
    putStrLn "Ingrese el valor de a:"
    inputA <- getLine
    putStrLn "Ingrese el valor de b:"
    inputB <- getLine
    putStrLn "Ingrese el valor de c:"
    inputC <- getLine

    let a = read inputA :: Double
        b = read inputB :: Double
        c = read inputC :: Double

    let resultado = calcularRaiz a b c
    putStrLn ("La raíz cuadrada de la expresión es: " ++ show resultado)
