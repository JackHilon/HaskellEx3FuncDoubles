

returSameIntValue::Double -> Double
returSameIntValue a = a

cubeFirstOnly::Double -> Double -> Double -> Double
cubeFirstOnly a b c = (a * a * a) * (b / b) + (c -c)

cubeFirstOnlyWithString::String -> String -> String -> Double
cubeFirstOnlyWithString a b c = do
    let e = read a::Double
    let f = read b::Double
    let g = read c::Double
    cubeFirstOnly e f g

cubeFirstOnlyAsString::String -> String -> String -> String
cubeFirstOnlyAsString a b c = do
    let e = read a::Double
    let f = read b::Double
    let g = read c::Double
    show (cubeFirstOnly e f g)


main = do 
    putStr("Enter first number: ")
    num1 <- getLine
    putStr("Enter second number: ")
    num2 <- getLine
    putStr("Enter third number: ")
    num3 <- getLine
    let n1 = read num1::Double
    let n2 = read num2::Double
    let n3 = read num3::Double
    let n = cubeFirstOnly n1 n2 n3::Double
    let m = cubeFirstOnlyWithString num1 num2 num3::Double
    let p = cubeFirstOnlyAsString num1 num2 num3::String
    putStrLn("Cube of first number: " ++ show n)
    putStrLn("Cube of first number (again): " ++ show (cubeFirstOnly n1 n2 n3))
    putStrLn("Cube of first number (third): " ++ show m)
    putStrLn("Cube of first number (fourth): " ++ p)
