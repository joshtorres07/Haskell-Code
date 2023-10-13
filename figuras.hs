import Data.Char
data Figura = Cuadrado Integer | Rectangulo Integer Integer
perimetro :: Figura -> Integer
area :: Figura -> Integer

perimetro (Cuadrado x) = x * 4
perimetro(Rectangulo x y) = x * 2 + y * 2

area(Cuadrado x) = x * x
area(Rectangulo x y) = x * y

main =  do 
 print(perimetro(Cuadrado 10))
 print(perimetro(Rectangulo 2 4))
 print(area(Cuadrado 5))
 print(area(Rectangulo 3 2))

