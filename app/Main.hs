module Main where

import Lib
import GHCi.ObjLink as ObjLink

main :: IO ()
main = do
  putStrLn "InitLinker"
  ObjLink.initObjLinker ObjLink.RetainCAFs
  putStrLn "LoadObj"
  ObjLink.loadObj "c-bits/library.o"
  putStrLn "ResolveObj"
  ObjLink.resolveObjs
  putStrLn "Linked"
