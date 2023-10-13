naturales :: [Integer]
naturales = [1..]

main :: IO ()
main = do
    -- Tomamos los primeros 15 números naturales
    let primerosQuince = take 15 naturales
    putStrLn "Los primeros 15 números naturales son:"
    print primerosQuince

