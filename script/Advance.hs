{-# LANGUAGE OverloadedStrings #-}
module Advance
    ( 
        main
    )
    where
import qualified Data.Text as T
import System.FilePath.Posix
import System.Directory
import System.Environment
import Data.List (isPrefixOf,isSuffixOf)
import Data.Char (isDigit)


makeTemplate :: String -> String -> Int -> IO()
makeTemplate templateFile outputMask problemNumber = do
        contents <- readFile templateFile
        let output = T.replace  "%%PROBLEM_NUMBER%%" (T.pack $ show problemNumber) (T.pack contents)
        let problemFileName = T.replace "%%PROBLEM_NUMBER%%" (T.pack $ show problemNumber) (T.pack outputMask)
        let outPath = takeDirectory templateFile ++ [pathSeparator] ++ T.unpack problemFileName 
        writeFile outPath $ T.unpack output
        putStrLn ("file written : " ++ outPath)

makeBlank :: String -> Int -> IO()
makeBlank outputPath problemNumber = do
        let problemFileName = T.unpack $ T.replace "%%PROBLEM_NUMBER%%" (T.pack $ show problemNumber) (T.pack outputPath)
        writeFile problemFileName $ T.unpack "" 
        putStrLn ("file written : " ++ problemFileName)


getNumberArgument :: Maybe IO [String]
getNumberArgument = do
            args <- getArgs 
            if not (null args) then read (head args) else Nothing

getNextNumber path = do
    files <- listDirectory path
    let problems = filter (\y -> isSuffixOf ".hs" y && isPrefixOf "Problem" y ) files
    let highest = maximum $ map((\y -> read y::Int ) . filter  isDigit ) problems
    return (highest + 1)
    
     

main :: IO ()
main =  do  
    num <- getNumberArgument
    case num of
      Nothing -> getNextNumber "src"
      Just n -> n
    print num
--    makeTemplate "src/TemplateProblem.txt" "Problem%%PROBLEM_NUMBER%%.hs" num
--   makeTemplate "test/TemplateProblem.txt" "Problem%%PROBLEM_NUMBER%%Spec.hs" num

