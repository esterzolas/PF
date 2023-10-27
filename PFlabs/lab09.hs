import Data.Char

--1
--a. Char, 'M'
--b. Bool, True
--c. Bool, True
--d. Bool, False

--2
--(\(nome,peso,altura) -> peso/(altura^2)) ("Bruno", 60.0,1.78)

--3 
filtrar lst = filter (\x -> mod x 3 == 0) lst

--4
composta f g = h where h = f(g x)

--a
composta' = (\f g -> f . g)

--b
composta'::(b->c)->(a->b)->a->c
