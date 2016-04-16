import System.IO
import Control.Monad
import Data.Text
import Data.Char

    
codeFor :: Char -> Int
codeFor c
  | ord c >= ord 'A' && ord c <= ord 'Z' = (ord c) - (ord 'A')
  | ord c >= ord 'a' && ord c <= ord 'z' = (ord c) - (ord 'a')
  | otherwise = 26

splitChars :: Int -> String -> [String]  
splitChars width line = fmap unpack (chunksOf width (pack line))

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    

    width  <- fmap read getLine :: IO Int
    height <- fmap read getLine :: IO Int
    codes  <- fmap (fmap codeFor) getLine :: IO [Int]
    
    result <- replicateM height $ do
        asciiArt <- fmap (splitChars width) getLine :: IO [String]
        let line = Prelude.concat (fmap (asciiArt !!) codes)

        putStrLn line
        return ()
    
    return ()
    

