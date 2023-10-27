import Data.Char

--01
--a
primeiros::[(a,b)] -> [a]

primeiros lista = map fst lista

--b
maiusculas::String -> String

maiusculas x = map toUpper x

--c
dobros::Num a => [a] -> [a]

dobros x = map (*2) x 

--02
--a
pares::[Int]->[Int]

pares x = filter even x

--b
beto::String -> String

beto x = filter isAlpha x

--c
rm_char::Char->[Char]->[Char]

rm_char c lista = filter (/= c) lista

--3
--a
produto::Num a => [a] -> a

produto lista = foldr (*) 1 lista

--b
e_logico::[Bool]->Bool
e_logico x = foldr (&&) True x

--c
concatena::[String] -> String

concatena lista = foldr (++) [] lista 