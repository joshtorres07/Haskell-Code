

-- Área de un círculo
areaCirculo :: Double -> Double
areaCirculo radio = 3.1416 * radio * radio

-- Área de un triángulo
areaTriangulo :: Double -> Double -> Double
areaTriangulo base altura = 0.5 * base * altura

-- Área de un cuadrado
areaCuadrado :: Double -> Double
areaCuadrado lado = lado * lado

-- Área de un rectángulo
areaRectangulo :: Double -> Double -> Double
areaRectangulo base altura = base * altura

-- Área de un trapecio
areaTrapecio :: Double -> Double -> Double -> Double
areaTrapecio baseMayor baseMenor altura = 0.5 * (baseMayor + baseMenor) * altura

main :: IO ()
main = do
    putStrLn "Calculadora de áreas:"
    putStrLn "1. Círculo"
    putStrLn "2. Triángulo"
    putStrLn "3. Cuadrado"
    putStrLn "4. Rectángulo"
    putStrLn "5. Trapecio"
    putStrLn "Seleccione una opción (1/2/3/4/5):"
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Ingrese el radio del círculo:"
            radioStr <- getLine
            let radio = read radioStr :: Double
            let resultado = areaCirculo radio
            putStrLn ("El área del círculo es: " ++ show resultado)
        "2" -> do
            putStrLn "Ingrese la base del triángulo:"
            baseStr <- getLine
            putStrLn "Ingrese la altura del triángulo:"
            alturaStr <- getLine
            let base = read baseStr :: Double
            let altura = read alturaStr :: Double
            let resultado = areaTriangulo base altura
            putStrLn ("El área del triángulo es: " ++ show resultado)
        "3" -> do
            putStrLn "Ingrese el lado del cuadrado:"
            ladoStr <- getLine
            let lado = read ladoStr :: Double
            let resultado = areaCuadrado lado
            putStrLn ("El área del cuadrado es: " ++ show resultado)
        "4" -> do
            putStrLn "Ingrese la base del rectángulo:"
            baseStr <- getLine
            putStrLn "Ingrese la altura del rectángulo:"
            alturaStr <- getLine
            let base = read baseStr :: Double
            let altura = read alturaStr :: Double
            let resultado = areaRectangulo base altura
            putStrLn ("El área del rectángulo es: " ++ show resultado)
        "5" -> do
            putStrLn "Ingrese la base mayor del trapecio:"
            baseMayorStr <- getLine
            putStrLn "Ingrese la base menor del trapecio:"
            baseMenorStr <- getLine
            putStrLn "Ingrese la altura del trapecio:"
            alturaStr <- getLine
            let baseMayor = read baseMayorStr :: Double
            let baseMenor = read baseMenorStr :: Double
            let altura = read alturaStr :: Double
            let resultado = areaTrapecio baseMayor baseMenor altura
            putStrLn ("El área del trapecio es: " ++ show resultado)
        _ -> putStrLn "Opción no válida"

