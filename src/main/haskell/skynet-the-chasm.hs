import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    road <- fmap read getLine :: IO Int
    gap <- fmap read getLine :: IO Int
    platform <- fmap read getLine :: IO Int
    loop gap road

loop :: Int -> Int -> IO ()
loop gap road = do
    speed <- fmap read getLine :: IO Int
    coordx <- fmap read getLine :: IO Int
    
    putStrLn $ whatToDo coordx speed gap road
    
    loop gap road
    

targetSpeedForGap gap = gap + 1

shouldSlowDown x speed gap road =
  (isOnPlatform x gap road) || (isTooFast speed gap)
  where
    isOnPlatform x gap road = x >= (gap + road)
    isTooFast speed gap = speed > (targetSpeedForGap gap)
    
shouldSpeedUp speed gap = speed < (targetSpeedForGap gap)

shouldJump x speed gap road = (x + speed) >= (gap + road)

whatToDo x speed gap road 
  | shouldSlowDown x speed gap road = "SLOW"
  | shouldJump x speed gap road = "JUMP"
  | shouldSpeedUp speed gap = "SPEED"
  | otherwise = "WAIT"

