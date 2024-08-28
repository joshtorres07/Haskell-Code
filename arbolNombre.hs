--import Data.Char

data Arbol a = Hoja | Nodo a (Arbol a) (Arbol a) deriving (Show, Eq)


arbol :: Arbol Char


--Contar numero de hojas
--count
nHojas :: Arbol a -> Int
nHojas Hoja = 1 
nHojas(Nodo x l r) = nHojas l + nHojas r

--contas numero de nodos
nNodos :: Arbol a -> Int
nNodos Hoja = 0
nNodos(Nodo x l r) = nNodos l + nNodos r+1

profundidad :: Arbol a -> Int
profundidad Hoja = 0
profundidad(Nodo x l r) = 1+max(profundidad l)(profundidad r)

preorden :: Arbol a -> [a]
preorden Hoja = []
preorden (Nodo x l r) = [x] ++ preorden l ++ preorden r

inorden :: Arbol a -> [a]
inorden Hoja = []
inorden(Nodo x l r) =  inorden l ++ [x] ++ inorden r

postOrden :: Arbol a -> [a]
postOrden Hoja = []
postOrden(Nodo x l r) = postOrden l ++ postOrden r ++ [x]

arbol = Nodo 'j' 
        (Nodo 'o' 
            (Nodo 's' 
                (Nodo 'u' 
					(Nodo 'e' Hoja Hoja)
                	(Nodo 'd' Hoja Hoja)
                )
                (Nodo 'a'
                	(Nodo 'n' Hoja Hoja)
                	(Nodo 'i' Hoja Hoja)
                )
            )
            (Nodo 'e' 
                 (Nodo 'l' 
					(Nodo 't' Hoja Hoja)
                	(Nodo 'o' Hoja Hoja)
                )
                (Nodo 'r'
                	(Nodo 'r' Hoja Hoja)
                	(Nodo 'e' Hoja Hoja)
                )
            )
        )
        (Nodo 's' 
            (Nodo 's' 
                (Nodo 'a' Hoja Hoja) 
                (Nodo 'n' Hoja Hoja)
            )
            (Nodo 't' 
                (Nodo 'o' Hoja Hoja)
                (Nodo 's' Hoja Hoja)
            )
        )
       
main = do 
 print(arbol)
 print(nHojas arbol )
 print(nNodos arbol)
 print(profundidad arbol)
 print(preorden arbol)
 print(postOrden arbol)
 print(inorden arbol)