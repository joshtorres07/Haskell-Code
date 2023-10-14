data Figura = Cuadrado Double
           | Rectangulo Double Double
           | Triangulo Double Double Double
           | Pentagono Double
           | Circulo Double
           | Trian Double Double  -- Cambio de Trian a Triang
           | PentA Double Double   -- Cambio de PentA a Pentagono con dos lados

perimetro :: Figura -> Double
perimetro (Cuadrado x) = x * 4
perimetro (Rectangulo x y) = x * 2 + y * 2
perimetro (Triangulo x y z) = x + y + z
perimetro (Pentagono x) = x * 5
perimetro (Circulo r) = 2 * r * pi

area :: Figura -> Double
area (Cuadrado x) = x * x
area (Rectangulo x y) = x * y
area (Circulo r) = pi * r * r
area (Trian x y) = (x * y) / 2
area (PentA x y) = (5 * x * y) / 2

main :: IO ()
main = do
    putStr "Perimetro de Cuadrado "
    print (perimetro (Cuadrado 10.0))
    putStr "Perimetro de Rectangulo "
    print (perimetro (Rectangulo 2.5 4.3))
    putStr "Perimetro de Triangulo "
    print (perimetro (Triangulo 4.5 5.2 6.0))
    putStr "Perimetro de Pentagono "
    print (perimetro (Pentagono 6.4))
    putStr "Perimetro de Circulo "
    print (perimetro (Circulo 5.0))

    putStr "Area de Cuadrado "
    print (area (Cuadrado 5))
    putStr "Area de Rectangulo "
    print (area (Rectangulo 3 2))
    putStr "Area de Triangulo "
    print (area (Trian 3.3 7.2))
    putStr "Area de Pentagono "
    print (area (PentA 6.0 7.1))
    putStr "Area de Circulo "
    print (area (Circulo 4.6))
