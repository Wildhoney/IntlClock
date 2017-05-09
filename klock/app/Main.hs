module Main where

import Time (withOffset)

main :: IO ()
main = withOffset 60 >>= putStrLn . show
