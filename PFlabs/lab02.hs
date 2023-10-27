ordena2 :: Int -> Int -> (Int, Int)

ordena2 a b = if a < b then (a,b) else (b,a)

ordena21 :: Int -> Int -> (Int, Int)

ordena21 a b
	|a < b = (a,b)
	|otherwise = (b,a)

mes :: Int -> String

mes x
	|x == 1 = "Janeiro"
	|x == 2 = "Fevereiro"
	|x == 3 = "Marco"
	|x == 4 = "Abril"
	|x == 5 = "Maio"
	|x == 6 = "Junho"
	|x == 7 = "Julho"
	|x == 8 = "Agosto"
	|x == 9 = "Setembro"
	|x == 10 = "Outubro"
	|x == 11 = "Novembro"
	|x == 12 = "Dezembro"
	|otherwise = error("Erro")

mes1 :: Int -> String

mes1 x = 
	case x of
		1 -> "Janeiro"
		2 -> "Fevereiro"
		3 -> "Marco"
		4 -> "Abril"
		5 -> "Maio"
		6 -> "Junho"
		7 -> "Julho"
		8 -> "Agosto"
		9 -> "Setembro"
		10 -> "Outubro"
		11 -> "Novembro"
		12 -> "Dezembro"
		_ -> error("Erro")

forma:: Float -> Float -> Float -> Bool

forma a b c
	|(a <= 0) || ((b <= 0) || (c <= 0)) = False
	|(a + b) < c = False
	|(a + c) < b = False
	|(b + c) < a = False
	|otherwise = True

triangulo :: Float -> Float -> Float -> String
triangulo a b c = if not(forma a b c) then "Nao e triangulo" else if (a == b)&&(b == c) then "Equilatero" else if (a /= b)&&((b /= c)&&(a/=c)) then "Escaleno" else "Isosceles"

triangulo' :: Float -> Float -> Float -> String
triangulo' a b c
	|not possivel = "Nao e triangulo"
	|(a == b)&&(b == c) = "Equilatero"
	|a /= b)&&((b /= c)&&(a/=c)) = "Escaleno"
	|otherwise = "Isosceles"
	where possivel = a>0 && b>0 && c>0 && (a + b) > c && (a + c) > b && (b + c) > a