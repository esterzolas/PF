module Main (main) where

import System.Random
import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

jogoAdivinhacao::Int -> IO()
jogoAdivinhacao tentativa = do numAleatorio <- randomRIO(1,100) :: IO Int
                               putStrLn "Estou pensando em número de 1 a 100. Tente adivinhar! ;)"
                               palpite <- getLine
                               putStrLn "Tentativa " ++ tentativa
                               if palpite < numAleatorio then do putStrLn "O palpite está abaixo do número"
                             	                                 jogoAdivinhacao (tentativa + 1)
                               else do putStrLn "O palpite está acima do número"
                                       jogoAdivinhacao (tentativa + 1)
                               -- Usar uma função com guarda pra comparação
main:: IO()
main = do hSetBuffering stdout NoBuffering
          putStrLn "Bem Vindo ao Jogo de Adivinhação!"
          putStrLn "MENU"
          putStrLn "1. Jogar"
          putStrLn "2. Highscore"
          putStrLn "3. Sair"
          putStr "Digite uma opção válida: "
          opcao <- getLine

          case (read(opcao)) of 
            1 -> jogoAdivinhacao(1)
            2 -> putStrLn "lerHighscore"
            3 -> putStrLn "Fechando...:)"

