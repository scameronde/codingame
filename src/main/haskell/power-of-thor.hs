import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering 
    
    input_line <- getLine
    let input = words input_line
    let lightx = read (input!!0) :: Int -- the X position of the light of power
    let lighty = read (input!!1) :: Int -- the Y position of the light of power
    let initialtx = read (input!!2) :: Int -- Thor's starting X position
    let initialty = read (input!!3) :: Int -- Thor's starting Y position
    loop lightx lighty initialtx initialty

ns :: Int -> Int -> (Int, String)
ns ly ty 
  | ly < ty  = (ty-1, "N")
  | ly == ty = (ty, "")
  | ly > ty  = (ty+1, "S")

we :: Int -> Int -> (Int, String)
we lx tx
  | lx < tx  = (tx-1, "W")
  | lx == tx = (tx, "")
  | lx > tx  = (tx+1, "E")
  
loop :: Int -> Int -> Int -> Int -> IO ()
loop lx ly tx ty = do
    input_line <- getLine
    let remainingturns = read input_line :: Int -- The remaining amount of turns Thor can move. Do not remove this line.
    
    let posWE = we lx tx
    let posNS = ns ly ty
    
    putStrLn (snd posNS ++ snd posWE)
                    
    loop lx ly (fst posWE) (fst posNS)
   
