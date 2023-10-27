--4
maior::Float -> Float -> Float
maior a b = if a > b then a else b

menor::Float->Float->Float
menor a b = if a < b then a else b

--subtrai o maior entre dois numeros do menor entre dois numeros

--5
circulo::Float->Float
circulo d = 3.14*(r^2)
			where r = d/2

--6

numRaizes::Float->Float->Float->Int
numRaizes a b c
	|delta > 0 = 2
	|delta == 0 = 1
	|otherwise = 0
	where delta = (b^2) - 4*a*c

numRaizes2 a b c = let delta = b*b - 4*a*c
	in if delta > 0 then 2 else if delta == 0 then 1 else 0

--7
menu :: IO ()
menu = do 
		putStr "1 - Soma\n2 - Diferenca\n3 - Produto\n4 - Divisao\nOpcao: "
		op <- getLine
		putStr "Digite dois numeros: "
		a <- getLine
		b <- getLine
		case op of
			"1" ->putStrLn(show((read a) + (read b)))
			"2" -> if a > b then putStrLn(show((read a) - (read b))) else putStrLn(show((read b) - (read a)))
			"3" -> putStrLn(show((read a) * (read b)))
			"4" -> if a > b then putStrLn(show((read a) / (read b))) else if a /= "0" then putStrLn("-1") else putStrLn(show((read b) / (read a)))
			_ -> putStrLn "Erro" 