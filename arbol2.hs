--import Data.Char

data Arbol a = Hoja | Nodo a (Arbol a) (Arbol a) deriving (Show, Eq)


arbol :: Arbol Int


--Contar numero de hojas

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

arbol = Nodo 8 (Nodo 4 (Nodo 2 (Nodo 1 Hoja Hoja)(Nodo 3 Hoja Hoja))(Nodo 6 (Nodo 5 Hoja Hoja)(Nodo 7 Hoja Hoja))) (Nodo 12 (Nodo 10 (Nodo 9 Hoja Hoja) (Nodo 11 Hoja Hoja))(Nodo 14 (Nodo 13 Hoja Hoja)(Nodo 15 Hoja Hoja)))


main = do 
 print(arbol)
 print(nHojas arbol )
 print(nNodos arbol)
 print(profundidad arbol)
 print(preorden arbol)
 print(postOrden arbol)
 print(inorden arbol)