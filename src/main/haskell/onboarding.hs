import System.IO

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    loop

loop :: IO ()
loop = do
    enemy1 <- getLine
    dist1 <- fmap read getLine :: IO Int
    enemy2 <- getLine
    dist2 <- fmap read getLine :: IO Int
    
    if (dist1 < dist2) then
        putStrLn enemy1
    else
        putStrLn enemy2
    loop

