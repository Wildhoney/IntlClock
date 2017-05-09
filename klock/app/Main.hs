module Main where

import Prelude (IO, (.), (>>=), putStrLn, show)
import Time    (withOffset)

main :: IO ()
main = withOffset 60 >>= putStrLn . show
