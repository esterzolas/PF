type StudentID = Int
type FirstName = String
type LastName = String 
type Age =  Int

data Student = Ind StudentID FirstName LastName Age
	deriving(Show)

initialDatabase:: [Student]
initialDatabase = []

addStudent:: [Student] -> Student -> [Student]
addStudent lista estudante = do database <- estudante:lista
                                printStudent database

printStudent::[Student] -> IO()
printStudent (h:[]) = putStrLn h
printStudent (h:t) = do putStrLn h
                        printStudent t



--compareStudent:: Student -> StudentID -> Bool
--compareStudent (Ind x _ _ _) y = if (x == y) then True else False

--filterStudent:: [Student] -> StudentID -> [Student]
--filterStudent (h:t) id = filter (compareStudent h id) (h:t)

--firstName:: String->[Student]->Student
--firstName newName ((Ind _ name _ _):t) = (Ind _ newName _ _)

--updateStudent:: [Student] -> StudentID -> IO()
--updateStudent lista id =
  -- do filtrado <- filterStudent lista id
    --  if filtrado /= [] then
      --  do putStrLn "O que voce deseja alterar?"
        --   putStrLn "1. Primeiro nome"
          -- putStrLn "2. Ultimo nome"
          -- putStrLn "3. Idade"
          -- putStrLn "Entre com opcao: "
          -- op <- getLine
          -- case op of
           --   "1" -> do putStrLn "Insira o novo primeiro nome: "
             --           novoNome <- getLine
               --         map (firstName novoNome filtrado) filtrado 

     -- else putStrLn "Id nao identificado"
