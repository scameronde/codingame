import System.IO
import Control.Monad
import Data.Maybe
import Data.List

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering 
    loop

loop :: IO ()
loop = do
    
    heights <- replicateM 8 $ fmap read getLine :: IO [Int]
    let maxHeight = maximum heights
    let pos = elemIndex maxHeight heights
    let shootAt = fromMaybe 0 pos

    print shootAt
    
    loop

