import Data.Char
--1.
--a. [Char]
--b. (Char,Char,Char)
--c. [(Boolean, Char)]
--d. ([Boolean], [Char])
--e. 

--2.
--[Char]->Char
--a. A função pega a cabeça da cauda de uma lista, ou seja, o segundo elemento da lista
--Int->Int->(Int,Int)
--b. Pega dois elementos e junta os dois em uma tupla
--[Char]->Boolean
--c. Verifica se o reverso de uma lista é igual

--3.
ultimo::[Int]->Int
ultimo lista = head (reverse lista)

ultimo' lista = drop ((length lista) - 1) lista 

ultimo'' lista = lista !! ((length lista) - 1)

--4.
type Aluno = (Integer, [Char], Double)
type Curso = [Aluno]

--a.
segundo::Aluno -> [Char]
segundo (_, x, _) = x

terceiro::Aluno->Double
terceiro (_, _, x) = x

maiorAluno::Curso -> Aluno
maiorAluno curso
 |length curso == 1 = head curso
 |otherwise = if terceiro (head curso) > terceiro (maiorAluno (tail curso)) then head curso else maiorAluno (tail curso)

maiorNota::Curso -> [Char]
maiorNota curso = segundo (maiorAluno curso)

curso::Curso
curso = [(1, "a", 3), (2,"b", 6), (3, "c", 9)]

--b.
presente::Aluno->Curso->Bool
presente x curso
 |length curso == 0 = False
 |head curso == x = True
 |otherwise = presente x (tail curso)

insereAluno::Aluno->Curso->Curso
insereAluno x curso = if presente x curso then curso else x : curso

--2
--a
transforma::[Char] -> [Char]
transforma [] = []
transforma (h:t) = toUpper h : transforma t

--b
converteTupla::[Char]->([Char],[Char])
converteTupla x = (x, transforma x)

--3
maior::[Int]->Int
maior (h:[]) = h
maior (h:t) = if h > maior t then h else maior t

posicao::[Int]->Int->Int
posicao [] _ = 0
posicao (h:t) n = if h == n then 1 else 1 + (posicao t n)

maiorTupla::[Int]->(Int,Int)
maiorTupla x = (maior x, posicao x (maior x))

--4
remove::[Int]->Int->[Int]
remove [] _ = []
remove (h:t) n = if (posicao (h:t) h) == n then t else h : (remove t (n-1)) 