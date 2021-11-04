--
-- EPITECH PROJECT, 2021
-- B-FUN-501-NAN-5-1-HAL-victor.trencic [WSL: Ubuntu]
-- File description:
-- Erros
--

module Errors where

import Control.Exception
import System.Exit

data HalException =
    InvalidPath
    deriving Show

instance Exception HalException

exit :: IO ()
exit = exitWith $ ExitFailure 84

catchException :: HalException -> IO ()
catchException InvalidPath = putStrLn "One filepath provided is incorrect" >> exit
catchException _ = exit