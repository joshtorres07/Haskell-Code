import Data.Char

data Expresion = Numero Integer | Mas Expresion Expresion
								| Menos Expresion Expresion
								| Por Expresion Expresion

evalua :: Expresion -> Integer
evalua(Numero x) =  x
evalua(Mas x y) = (evalua x) + (evalua y)
evalua(Menos x y) = (evalua x) - (evalua y)
evalua(Por x y) = (evalua x) * (evalua y)

main = do
 print(evalua(Mas(Numero 2)(Numero 10)))
 print(evalua(Menos(Numero 2)(Numero 10)))
 print(evalua(Por(Numero 2)(Numero 10)))
 print(5+2*3)
 print(evalua(Mas(Numero 5)(Por(Numero 2)(Numero 3))))
 print(evalua(Numero 101))
 print(5*2-4*3)
 print(evalua(Menos(Por(Numero 5)(Numero 2))((Por(Numero 4)(Numero 3)))))