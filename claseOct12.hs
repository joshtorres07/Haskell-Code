import Data.Char

data Diccionario = Palabra String
enMayusculas :: Diccionario -> String
enMayusculas (Palabra x) = map toUpper x
enMinusculas :: Diccionario -> String
enMinusculas (Palabra x) = map toLower x
main = do
	print(enMayusculas(Palabra "hola"))
	print(enMinusculas(Palabra "HOLA"))