--Ex 1
import Data.Char

converte:: Char->(Char,Char,Int)
converte a = (a, (toUpper a), (ord a))

--Ex 2
equacaoRaiz::(Double,Double,Double)->(Double,Double)
equacaoRaiz (a,b,c)
  |delta >= 0 = ((-b + sqrt(delta))/(2*a), (-b - sqrt(delta))/(2*a))
  |otherwise = error("nao ha raizes reais")
  where delta = b**2 - 4*a*c

--Ex 3

type Nome = String
type Idade = Float
type Sexo = String
type Pessoa = (Nome, Idade, Sexo)

pessoa:: Float->Pessoa
pessoa 1 = ("Esterzolas", 20, "nao binarie")
pessoa 2 = ("Bruno", 19, "nao faco")
pessoa 3 = ("Alice", 20, "quero")
pessoa 4 = ("Julia", 27, "pornitta")

pessoaG::Float->Pessoa
pessoaG a 
  |a == 1 = ("Esterzolas", 20, "nao binarie")
  |a == 2 = ("Bruno", 19, "nao faco")
  |a == 3 = ("Alice", 20, "quero")
  |a == 4 = ("Julia", 27, "pornitta")
  |otherwise = ("Deu", 3, "rrado")

idadePessoa:: Pessoa->Idade
idadePessoa (_,idade,_) = idade

somaIdade:: Float->Float
somaIdade x
 |x == 0 = 0
 |x > 0 = (idadePessoa (pessoa x)) + (somaIdade (x-1))

mediaIdade::Float->Float
mediaIdade n = (somaIdade n)/n