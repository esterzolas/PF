module Main (main) where

import System.Random
import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

highscore:: Int ->IO()
highscore tentativas = do recorde <- readFile "highscore.txt"
                          if tentativas < read recorde then do putStrLn "Você bateu o recorde!"
                                                               writeFile "highscore.txt" (show tentativas) 
                                                        else putStrLn "Você não bateu o recorde..."

comparar:: Int ->Int -> Int
comparar palpite numAleatorio
 |palpite == numAleatorio = 0
 |palpite < numAleatorio = 1
 |otherwise = 2

jogoAdivinhacao :: Int -> Int -> IO ()
jogoAdivinhacao tentativa numAleatorio = do putStrLn ("Tentativa " ++ (show tentativa))
                                            palpite <- getLine
                                            case comparar (read palpite) numAleatorio of
                                             0 -> do putStrLn ("Seu palpite " ++ (show palpite) ++ " está correto!")
                                                     putStrLn ("Parabéns! Você acertou na " ++ (show tentativa) ++ "° tentativa.")
                                                     putStrLn ""
                                                     highscore tentativa
                                                     putStrLn "Deseja jogar novamente? (Digite s para sim e qualquer tecla para sair)"
                                                     caractere <- getLine
                                                     case caractere of 
                                                      "s" -> do numAleatorio <- randomRIO(1,100)
                                                                putStrLn ""
                                                                putStrLn "Estou pensando em número de 1 a 100. Tente adivinhar! ;)"
                                                                jogoAdivinhacao 1 numAleatorio
                                                      _ -> putStrLn "Obrigada pela jogatina!"
                                             1 -> do putStrLn "O palpite está abaixo do número"
                                                     jogoAdivinhacao (tentativa + 1) numAleatorio
                                        
                                             2 -> do putStrLn "O palpite está acima do número"
                                                     jogoAdivinhacao (tentativa + 1) numAleatorio
                                             _ -> putStrLn "Opcao invalida. Fechando..."

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStrLn "Bem Vindo ao Jogo de Adivinhação!"
  putStrLn "MENU"
  putStrLn "1. Jogar"
  putStrLn "2. Highscore"
  putStrLn "3. Sair"
  putStr "Digite uma opção válida: "
  opcao <- getLine

  
  case (opcao) of
    "1" -> do numAleatorio <- randomRIO(1,100)
              putStrLn "Estou pensando em número de 1 a 100. Tente adivinhar! ;)"
              jogoAdivinhacao 1 numAleatorio
    "2" -> do highscore <- readFile "highscore.txt"
              putStrLn ""
              putStrLn ("Recorde atual: " ++ highscore)
              putStrLn ""
              main 
    "3" -> putStrLn "Fechando...:)"
    _ -> putStrLn "Opcao invalida. Fechando..."
